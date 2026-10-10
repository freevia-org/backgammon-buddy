// Derived from wildbg's wildbg-c crate (MIT OR Apache-2.0), pinned at 24d26fe.
// This shim is derived from native/wildbg/crates/wildbg-c/src/lib.rs. It adds
// `wildbg_new_with_path` for production nets, removes upstream's exported
// demo-net constructor, and hardens the public C boundary against malformed
// board arrays and Rust panics.

use core::ffi::*;
use engine::composite::CompositeEvaluator;
use engine::dice::Dice;
use engine::position::Position;
use engine::probabilities::Probabilities;
use logic::bg_move::{BgMove, MoveDetail};
use logic::cube::CubeInfo;
use logic::wildbg_api::{ScoreConfig, WildbgApi};

// When this file is changed, recreate the header file by executing this from the project's root:
// cbindgen --config crates/wildbg-c/cbindgen.toml  --crate wildbg-c --output crates/wildbg-c/wildbg.h --lang c

// For more infos about Rust -> C see
// https://docs.rust-embedded.org/book/interoperability/rust-with-c.html
// http://jakegoulding.com/rust-ffi-omnibus/objects/

// Wrap the WildbgApi into a new struct, so that we don't have to expose the CompositeEvaluator
pub struct Wildbg {
    api: WildbgApi<CompositeEvaluator>,
}

/// Configuration needed for the evaluation of positions.
///
/// Currently only 1 pointers and money game are supported.
/// In the future `BgConfig` can also include information about Crawford, cube possession, strength of the engine and so on.
#[repr(C)]
pub struct BgConfig {
    /// Number of points the player on turn needs to finish the match. Zero indicates money game.
    pub x_away: c_uint,
    /// Number of points the opponent needs to finish the match. Zero indicates money game.
    pub o_away: c_uint,
}

/// Loads the COMPILED-IN DEMO neural nets and returns a pointer to the API.
/// Returns `NULL` if they cannot be found.
///
/// To free the memory after usage, call `wildbg_free`.
///
/// NOT part of the shim's C ABI — `#[cfg(test)]`, so it is neither exported nor
/// compiled into the shipped library. AIGammon ships the production nets and
/// binds `wildbg_new_with_path` alone; an exported constructor that quietly
/// hands back a demo-strength engine is a trap on a public C ABI, and the only
/// caller left was upstream's own unit test below.
///
/// That test is kept verbatim rather than ported: its assertions name the exact
/// move each match score picks, and the production nets play the position
/// differently (they agree across the two scores where the demo nets do not),
/// so re-pointing it would have meant rewriting what it asserts — which is the
/// signal to leave it alone. The production nets have their own coverage in
/// `tests/smoke.rs` and in the engine_bindings Dart suite.
#[cfg(test)]
pub extern "C" fn wildbg_new() -> *mut Wildbg {
    match WildbgApi::try_default() {
        Ok(api) => Box::into_raw(Box::new(Wildbg { api })),
        Err(message) => {
            eprintln!("{message}");
            std::ptr::null_mut()
        }
    }
}

#[unsafe(no_mangle)]
/// # Safety
///
/// Frees the memory of the argument. A NULL pointer is accepted as a no-op.
/// Don't call it more than once for the same non-NULL `Wildbg` pointer.
pub unsafe extern "C" fn wildbg_free(ptr: *mut Wildbg) {
    if ptr.is_null() {
        return;
    }
    unsafe {
        drop(Box::from_raw(ptr));
    }
}

#[repr(C)]
#[derive(Debug, Default, PartialEq)]
pub struct CProbabilities {
    /// Cubeless probability to win the game. This includes gammons and backgammons.
    win: c_float,
    /// Probability to win gammon or backgammon.
    win_g: c_float,
    /// Probability to win backgammon.
    win_bg: c_float,
    /// Probability to lose gammon or backgammon.
    lose_g: c_float,
    /// Probability to lose backgammon.
    lose_bg: c_float,
}

impl From<&Probabilities> for CProbabilities {
    fn from(value: &Probabilities) -> Self {
        Self {
            win: value.win_normal + value.win_gammon + value.win_bg,
            win_g: value.win_gammon + value.win_bg,
            win_bg: value.win_bg,
            lose_g: value.lose_gammon + value.lose_bg,
            lose_bg: value.lose_bg,
        }
    }
}

/// When no move is possible, detail_count will be 0.
///
/// If only a single move is possible, `details[0]` will contain this information.
/// `detail_count` will contain a value between 0 and 4.
///
/// If the same checker is moved twice, this is encoded in two details.
#[repr(C)]
#[derive(Debug, Default, PartialEq)]
pub struct CMove {
    pub details: [CMoveDetail; 4],
    pub detail_count: c_int,
}

impl From<BgMove> for CMove {
    fn from(value: BgMove) -> Self {
        let details = value.into_details();
        let mut c_move = CMove::default();
        details.iter().enumerate().for_each(|(i, detail)| {
            c_move.details[i] = detail.into();
        });
        c_move.detail_count = details.len() as c_int;
        c_move
    }
}

/// If the move is not possible, both `from` and `to` will contain `-1`.
///
/// If the move is possible, `from` is an integer between 25 and 1,
/// `to` is an integer between 24 and 0.
/// `from - to` is then at least 1 and at most 6.
#[repr(C)]
#[derive(Debug, PartialEq)]
pub struct CMoveDetail {
    from: c_int,
    to: c_int,
}

impl Default for CMoveDetail {
    fn default() -> Self {
        Self { from: -1, to: -1 }
    }
}

impl From<&MoveDetail> for CMoveDetail {
    fn from(value: &MoveDetail) -> Self {
        CMoveDetail {
            from: value.from() as c_int,
            to: value.to() as c_int,
        }
    }
}

#[repr(C)]
#[derive(Debug, Default, PartialEq)]
pub struct CCubeInfo {
    should_double: bool,
    should_accept: bool,
    equity_cubeless: f32,
    equity_no_double: f32,
    equity_double_take: f32,
}

impl From<&CubeInfo> for CCubeInfo {
    fn from(value: &CubeInfo) -> Self {
        Self {
            should_double: value.double(),
            should_accept: value.accept(),
            equity_cubeless: value.equity_cubeless(),
            equity_no_double: value.equity_no_double(),
            equity_double_take: value.equity_double_take(),
        }
    }
}

type Error = &'static str;

/// Prevent a Rust panic from unwinding through an `extern "C"` frame, which
/// would abort the host process. The panic hook still records its details;
/// the caller receives the API's normal failure value.
fn catch_engine_panic<T>(operation: &str, call: impl FnOnce() -> T) -> Result<T, ()> {
    std::panic::catch_unwind(std::panic::AssertUnwindSafe(call)).map_err(|_| {
        eprintln!("{operation}: engine panicked");
    })
}

/// Validates the C integer board before converting it to the engine's i8
/// representation. Do this here rather than relying on Dart callers: this is
/// a public C ABI and narrowing first can wrap an invalid board into a
/// different, apparently legal position. The per-side total is also bounded
/// before `Position::try_from`, whose internal sums use i8.
fn checked_pips(pips: &[c_int; 26]) -> Result<[i8; 26], Error> {
    let mut x_checkers = 0_i32;
    let mut o_checkers = 0_i32;
    for &pip in pips {
        if !(-15..=15).contains(&pip) {
            return Err("Each point and bar count must be between -15 and 15.");
        }
        if pip > 0 {
            x_checkers += pip;
        } else {
            o_checkers -= pip;
        }
    }
    if x_checkers > 15 || o_checkers > 15 {
        return Err("A player cannot have more than 15 checkers on the board.");
    }
    if x_checkers == 0 && o_checkers == 0 {
        return Err("A position cannot have both players borne off.");
    }
    Ok(pips.map(|pip| pip as i8))
}

/// Returns the best move for the given position.
///
/// The player on turn always moves from pip 24 to pip 1.
/// The array `pips` contains the player's bar in index 25, the opponent's bar in index 0.
/// Checkers of the player on turn are encoded with positive integers, the opponent's checkers with negative integers.
///
/// # Safety
/// `wildbg`, `pips`, and `config` must be non-NULL, valid pointers to readable
/// values of their declared ABI sizes, and `wildbg` must remain live for this
/// call. Null pointers return the default failure value; dangling or undersized
/// non-NULL pointers remain caller errors.
#[unsafe(no_mangle)]
pub unsafe extern "C" fn best_move(
    wildbg: *const Wildbg,
    pips: *const c_int,
    die1: c_uint,
    die2: c_uint,
    config: *const BgConfig,
) -> CMove {
    // C callers can legally pass null even though Dart's typed FFI bindings do
    // not. Check every pointer before creating a Rust reference: doing so after
    // dereferencing would already be undefined behaviour and can abort the app.
    if wildbg.is_null() || pips.is_null() || config.is_null() {
        return CMove::default();
    }
    // SAFETY: non-null pointers are part of this function's documented C ABI
    // precondition; the fixed-size board and config are read-only for the call.
    let (wildbg, pips, config) = unsafe { (&*wildbg, &*(pips as *const [c_int; 26]), &*config) };
    let move_result = || -> Result<CMove, Error> {
        let position = Position::try_from(checked_pips(pips)?)?;
        let dice = Dice::try_from((die1 as usize, die2 as usize))?;
        let score_config = ScoreConfig::try_from((config.x_away, config.o_away))?;
        let bg_move = wildbg.api.best_move(&position, &dice, &score_config);
        Ok(CMove::from(bg_move))
    };
    match catch_engine_panic("best_move", move_result) {
        Ok(Ok(c_move)) => c_move,
        Ok(Err(error)) => {
            eprintln!("{error}");
            CMove::default()
        }
        Err(_) => CMove::default(),
    }
}

/// Returns cubeless money game probabilities for a certain position.
/// If an illegal position is encountered, all probabilities will be zero.
///
/// The player on turn always moves from pip 24 to pip 1.
/// The array `pips` contains the player's bar in index 25, the opponent's bar in index 0.
/// Checkers of the player on turn are encoded with positive integers, the opponent's checkers with negative integers.
///
/// # Safety
/// `wildbg` and `pips` must be readable pointers to a live `Wildbg` and 26
/// integers respectively for the duration of this call. Null pointers return
/// the default failure value; dangling or undersized non-null pointers are UB.
#[unsafe(no_mangle)]
pub unsafe extern "C" fn probabilities(
    wildbg: *const Wildbg,
    pips: *const c_int,
) -> CProbabilities {
    if wildbg.is_null() || pips.is_null() {
        return CProbabilities::default();
    }
    // SAFETY: guarded against null; callers must provide readable objects of
    // the declared ABI sizes for the duration of this call.
    let (wildbg, pips) = unsafe { (&*wildbg, &*(pips as *const [c_int; 26])) };
    let result = catch_engine_panic("probabilities", || {
        checked_pips(pips)
            .and_then(Position::try_from)
            .map(|position| CProbabilities::from(&wildbg.api.probabilities(&position)))
    });
    match result {
        Ok(Ok(probabilities)) => probabilities,
        Ok(Err(error)) => {
            eprintln!("{error}");
            CProbabilities::default()
        }
        Err(_) => CProbabilities::default(),
    }
}

/// # Safety
/// `wildbg` and `pips` must be readable pointers to a live `Wildbg` and 26
/// integers respectively for the duration of this call. Null pointers return
/// the default failure value; dangling or undersized non-null pointers are UB.
#[unsafe(no_mangle)]
pub unsafe extern "C" fn cube_info(wildbg: *const Wildbg, pips: *const c_int) -> CCubeInfo {
    if wildbg.is_null() || pips.is_null() {
        return CCubeInfo::default();
    }
    // SAFETY: guarded against null; callers must provide readable objects of
    // the declared ABI sizes for the duration of this call.
    let (wildbg, pips) = unsafe { (&*wildbg, &*(pips as *const [c_int; 26])) };
    let result = catch_engine_panic("cube_info", || {
        checked_pips(pips)
            .and_then(Position::try_from)
            .map(|position| CCubeInfo::from(&wildbg.api.cube_info(&position)))
    });
    match result {
        Ok(Ok(info)) => info,
        Ok(Err(error)) => {
            eprintln!("{error}");
            CCubeInfo::default()
        }
        Err(_) => CCubeInfo::default(),
    }
}

// ---------------------------------------------------------------------------
// AIGammon addition: runtime net loading.
// ---------------------------------------------------------------------------

use std::ffi::CStr;
use std::os::raw::c_char;

/// Loads neural nets at RUNTIME from the given directory (UTF-8 path to a
/// directory CONTAINING contact.onnx and race.onnx — note: the files directly,
/// not a neural-nets/ subdir; the Dart side passes
/// .../wildbg-nets/neural-nets). Returns NULL on failure.
///
/// The shim's only exported constructor, which is the point: every `Wildbg` a
/// caller can obtain is backed by the production nets.
///
/// To free the memory after usage, call `wildbg_free`.
///
/// # Safety
///
/// `path` must be either NULL or a pointer to a NUL-terminated C string that
/// stays valid for the duration of this call. A non-NULL pointer is read as a
/// C string, so a dangling or unterminated one is random memory access.
#[unsafe(no_mangle)]
pub unsafe extern "C" fn wildbg_new_with_path(path: *const c_char) -> *mut Wildbg {
    if path.is_null() {
        return std::ptr::null_mut();
    }
    let dir = match unsafe { CStr::from_ptr(path) }.to_str() {
        Ok(s) => s,
        Err(_) => return std::ptr::null_mut(),
    };
    let contact = format!("{dir}/contact.onnx");
    let race = format!("{dir}/race.onnx");
    let evaluator = catch_engine_panic("wildbg_new_with_path", || {
        CompositeEvaluator::from_file_paths_optimized(&contact, &race)
    });
    match evaluator {
        Ok(Ok(evaluator)) => {
            let api = WildbgApi::with_evaluator(evaluator);
            Box::into_raw(Box::new(Wildbg { api }))
        }
        Ok(Err(e)) => {
            eprintln!("wildbg_new_with_path failed: {e}");
            std::ptr::null_mut()
        }
        Err(_) => std::ptr::null_mut(),
    }
}

#[cfg(test)]
mod tests {
    use crate::{
        best_move, checked_pips, wildbg_new, BgConfig, CCubeInfo, CMove, CMoveDetail,
        CProbabilities,
    };
    use engine::position::X_BAR;
    use engine::{dice::Dice, pos};
    use logic::cube::CubeInfo;

    #[test]
    fn ffi_panic_guard_contains_panics() {
        assert!(super::catch_engine_panic("test", || panic!("simulated engine failure")).is_err());
    }

    #[test]
    fn checked_pips_rejects_values_that_would_wrap_when_narrowed() {
        let mut pips = [0; 26];
        pips[1] = 256;
        assert!(checked_pips(&pips).is_err());

        pips[1] = i32::MAX;
        assert!(checked_pips(&pips).is_err());
    }

    #[test]
    fn checked_pips_rejects_checker_totals_before_i8_sum_can_overflow() {
        let mut pips = [0; 26];
        pips[1] = 15;
        pips[2] = 15;
        assert!(checked_pips(&pips).is_err());

        pips[1] = -15;
        pips[2] = -15;
        assert!(checked_pips(&pips).is_err());
    }

    #[test]
    fn checked_pips_accepts_a_valid_position() {
        let mut pips = [0; 26];
        pips[1] = 15;
        pips[0] = -15;
        let checked = checked_pips(&pips).unwrap();
        assert_eq!(
            engine::position::Position::try_from(checked)
                .unwrap()
                .pip(1),
            15
        );
    }

    #[test]
    fn checked_pips_rejects_both_players_borne_off() {
        assert!(checked_pips(&[0; 26]).is_err());
    }

    #[test]
    fn c_boundary_null_pointers_return_safe_failure_values() {
        let pips = [0; 26];
        let config = BgConfig {
            x_away: 0,
            o_away: 0,
        };
        assert_eq!(
            unsafe { best_move(std::ptr::null(), pips.as_ptr(), 1, 2, &config) },
            CMove::default()
        );
        assert_eq!(
            unsafe { best_move(std::ptr::null(), pips.as_ptr(), 1, 2, std::ptr::null()) },
            CMove::default()
        );
        assert_eq!(
            unsafe { best_move(std::ptr::null(), std::ptr::null(), 1, 2, &config) },
            CMove::default()
        );
        let wildbg = wildbg_new();
        assert!(!wildbg.is_null());
        assert_eq!(
            unsafe { best_move(wildbg, std::ptr::null(), 1, 2, &config) },
            CMove::default()
        );
        assert_eq!(
            unsafe { best_move(wildbg, pips.as_ptr(), 1, 2, std::ptr::null()) },
            CMove::default()
        );
        assert_eq!(
            unsafe { super::probabilities(std::ptr::null(), pips.as_ptr()) },
            CProbabilities::default()
        );
        assert_eq!(
            unsafe { super::probabilities(std::ptr::null(), std::ptr::null()) },
            CProbabilities::default()
        );
        assert_eq!(
            unsafe { super::cube_info(std::ptr::null(), pips.as_ptr()) },
            CCubeInfo::default()
        );
        assert_eq!(
            unsafe { super::cube_info(std::ptr::null(), std::ptr::null()) },
            CCubeInfo::default()
        );
        assert_eq!(
            unsafe { super::probabilities(wildbg, std::ptr::null()) },
            CProbabilities::default()
        );
        assert_eq!(
            unsafe { super::cube_info(wildbg, std::ptr::null()) },
            CCubeInfo::default()
        );
        // A live engine with a readable but invalid all-zero position must
        // reach the existing validation path and return safe defaults.
        assert_eq!(
            unsafe { super::probabilities(wildbg, pips.as_ptr()) },
            CProbabilities::default()
        );
        assert_eq!(
            unsafe { super::cube_info(wildbg, pips.as_ptr()) },
            CCubeInfo::default()
        );
        assert_eq!(
            unsafe { best_move(wildbg, pips.as_ptr(), 1, 2, &config) },
            CMove::default()
        );
        unsafe { super::wildbg_free(wildbg) };
        unsafe { super::wildbg_free(std::ptr::null_mut()) };
    }

    #[test]
    fn from_cube_info() {
        let probs = engine::probabilities::Probabilities {
            win_normal: 0.7,
            win_gammon: 0.0,
            win_bg: 0.0,
            lose_normal: 0.3,
            lose_gammon: 0.0,
            lose_bg: 0.0,
        };
        let cube_info = CubeInfo::from(&probs);
        let c_cube: CCubeInfo = (&cube_info).into();
        assert_eq!(c_cube.should_double, cube_info.double());
        assert_eq!(c_cube.should_accept, cube_info.accept());
        assert_eq!(c_cube.equity_cubeless, cube_info.equity_cubeless());
        assert_eq!(c_cube.equity_no_double, cube_info.equity_no_double());
        assert_eq!(c_cube.equity_double_take, cube_info.equity_double_take());
    }

    #[test]
    fn from_probabilities() {
        let model_probs = engine::probabilities::Probabilities {
            win_normal: 0.32,
            win_gammon: 0.26,
            win_bg: 0.12,
            lose_normal: 0.15,
            lose_gammon: 0.1,
            lose_bg: 0.05,
        };

        let c_probs: CProbabilities = (&model_probs).into();
        assert_eq!(c_probs.win, 0.7);
        assert_eq!(c_probs.win_g, 0.38);
        assert_eq!(c_probs.win_bg, 0.12);
        assert_eq!(c_probs.lose_g, 0.15);
        assert_eq!(c_probs.lose_bg, 0.05);
    }

    #[test]
    fn from_bgmove_mixed_dice() {
        let old = pos!(x 24:2, 13:5, 8:3, 6:5; o 19:5, 17:3, 12:5, 1:2);
        let new = pos!(x 23: 1, 22:1, 13:5, 8:3, 6:5; o 19:5, 17:3, 12:5, 1:2);
        let dice = Dice::new(2, 1);
        let bg_move = logic::bg_move::BgMove::new(&old, &new, &dice);
        let c_move = crate::CMove::from(bg_move);
        assert_eq!(c_move.detail_count, 2);
        assert_eq!(c_move.details[0].from, 24);
        assert_eq!(c_move.details[0].to, 22);
        assert_eq!(c_move.details[1].from, 24);
        assert_eq!(c_move.details[1].to, 23);
    }

    #[test]
    fn from_bgmove_double_dice() {
        let old = pos!(x 24:2, 13:5, 8:3, 6:5; o 19:5, 17:3, 12:5, 1:2);
        let new = pos!(x 18:2, 13:3, 7:2, 8:3, 6:5; o 19:5, 17:3, 12:5, 1:2);
        let dice = Dice::new(6, 6);
        let bg_move = logic::bg_move::BgMove::new(&old, &new, &dice);
        let c_move = crate::CMove::from(bg_move);
        assert_eq!(c_move.detail_count, 4);
        assert_eq!(c_move.details[0].from, 24);
        assert_eq!(c_move.details[0].to, 18);
        assert_eq!(c_move.details[1].from, 24);
        assert_eq!(c_move.details[1].to, 18);
        assert_eq!(c_move.details[2].from, 13);
        assert_eq!(c_move.details[2].to, 7);
        assert_eq!(c_move.details[3].from, 13);
        assert_eq!(c_move.details[3].to, 7);
    }

    #[test]
    fn from_bgmove_nomoves() {
        let pos = pos!(x X_BAR:15; o 24:3, 23:3, 22:3, 21:2, 20: 2, 19: 2);
        let dice = Dice::new(1, 1);
        let bg_move = logic::bg_move::BgMove::new(&pos, &pos, &dice);
        let c_move = crate::CMove::from(bg_move);
        assert_eq!(c_move.detail_count, 0);
    }

    #[test]
    fn player_runs_in_money_game_but_not_in_1ptr() {
        // Given
        let wildbg = wildbg_new();
        let pips = [
            0, 2, 2, 2, 2, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -2, -2, 0, 0, 0, 0, 1, 0,
        ];
        let die1 = 5;
        let die2 = 4;

        let running = CMove {
            details: [
                CMoveDetail { from: 24, to: 20 },
                CMoveDetail { from: 20, to: 15 },
                CMoveDetail::default(),
                CMoveDetail::default(),
            ],
            detail_count: 2,
        };

        // When
        let config = BgConfig {
            x_away: 1,
            o_away: 1,
        };

        // Then
        // In 1-pointers we don't run to increase the small chance of winning.
        unsafe {
            let best_move = best_move(wildbg, pips.as_ptr(), die1, die2, &config);
            assert_ne!(best_move, running);
        }

        // And when
        let config = BgConfig {
            x_away: 0,
            o_away: 0,
        };

        // Then
        // In money games we run to avoid gammon/bg.
        unsafe {
            let best_move = best_move(wildbg, pips.as_ptr(), die1, die2, &config);
            assert_eq!(best_move, running);
        }
    }
}
