# GNUbg / App Store licensing investigation — 2026-10-19

## Findings

The current iOS binary statically links both `libaigammon_engine.a` (wildbg)
and `libbuddy_gnubg.a` (GNUbg). See `app/ios/Flutter/Release.xcconfig` and
`.github/workflows/ios.yml`. GNUbg 1.08.003 evaluator files retain GPL-3.0-or-later
notices, the portable wrapper is bundled, and weights/bearoff/match-equity assets
are under `app/assets/gnubg`. `native/gnubg/upstream/AUTHORS`, COPYING and
`app/assets/licenses/gnubg-NOTICES.txt` identify provenance. No App Store linking
or distribution exception was found in these notices. Expat's MIT license does
not change the evaluator's license. Freevia owns its additions, not every
upstream contributor's rights.

The [GPL text](https://www.gnu.org/licenses/gpl-3.0.html), especially sections
6, 7 and 10, is the primary source for object-code distribution, additional
permissions and downstream restrictions. The [GNU FAQ](https://www.gnu.org/licenses/gpl-faq.en.html#GPLStaticVsDynamic)
explains the FSF's view of combined/static/dynamic linking. The
[FSF's App Store enforcement explanation](https://www.fsf.org/blogs/licensing/more-about-the-app-store-gpl-enforcement)
is historical (2010), not a current GNUbg-specific ruling. It identifies
restrictions on redistribution as the conflict; public source availability
alone does not answer it. Current [Apple Media Services terms](https://www.apple.com/legal/internet-services/itunes/)
and [developer agreements](https://developer.apple.com/support/terms/) must be
reviewed for the actual contracting entity, territories and release date.

**Conclusion/inference:** do not assert that changing the app's MIT license to
GPL, disabling FairPlay where offered, choosing a free price, or adding a custom
EULA by itself clears this combined iOS binary. No permission has been obtained,
no rights-holder contact has been sent, and this document is not clearance.

## Options and practical cost

| Option | Work required | Current assessment |
|---|---|---|
| Obtain an explicit exception / alternate license | Identify all relevant rights holders for the vendored evaluator, bridge-derived code, weights and databases; obtain written terms covering Apple distribution, restrictions, source obligations and subsequent updates | Retains full engine comparison. There is no published commercial/dual-license offer established by this investigation. A maintainer reply alone may not cover every contributor or asset. Owner/rights holders must resolve this |
| Ship a distinct iOS build using wildbg only | Exclude GNUbg native archive, force-load/export symbols and assets from the **finished artifact**, remove engine choice/comparison UI and migrations that can select it, preserve permissive notices, update store claims and run actual-engine tests | Most actionable engineering alternative if licensing permission cannot be obtained. It changes functionality, so this investigation does not silently replace the existing dual-engine app |
| Replace GNUbg with another separately licensed evaluator | Audit source/model/training provenance, engine accuracy, match equity, licensing, ABI and performance; implement independent comparison capability | Larger engineering/quality effort. “Compatible file format” or “open source” is insufficient evidence of permission |
| Offer a separately deployed web/PWA edition | Build/audit a functional web engine and hosted source delivery, provide support and accurate privacy policy | Different distribution/product; not an App Store submission. The current native FFI application is not automatically a working PWA |
| Move GNUbg behind a remote service | Independently examine protocol and combined-work questions, hosting, network/data retention, latency and offline behavior; preserve applicable license obligations | Not a simple linking switch or established workaround. Would alter the app's offline analysis claim and require new backend/privacy work |

## Wildbg-only feasibility audit

The existing wildbg submodule is
<https://github.com/carsten-wenderdel/wildbg>, pinned by the repository gitlink;
its `LICENSE-MIT` / `LICENSE-APACHE` are permissive. Existing native model
provenance/CC0 checks and the full locked Rust dependency inventory still apply.
MPL-2.0 `dyn-eq` source and other notices must remain available. A GNUbg-free
variant is **not** equivalent to deleting a Settings item: the shipping app
currently statically links GNUbg, bundles its datasets via pubspec, and can select
it through persisted settings and parallel engine analysis.

An implementation must change and verify at least:

1. Native linker settings, `build-ios.sh`, staging and signed/unsigned CI paths;
   no `buddy_gnubg_*` symbol or GNUbg archive may remain in the exported Mach-O.
2. `app/pubspec.yaml` resource bundling and final `.app` inspection; do not retain
   GNUbg datasets accidentally. Review any reused data separately, including the
   match-equity XML's independent provenance; do not assume all assets are MIT.
3. Engine service/provider, Settings, saved-preference normalization and tutoring
   labels; the `gnubg` enum remains needed for other platforms unless a broader
   product decision is made. Wildbg must remain the actual working fallback.
4. Golden/widget tests, natural AI match, analysis/review/practice, both simulator
   device classes, native symbol/license inventory and a fresh unsigned device
   build. Capture new screenshots from that exact UI, not the dual-engine UI.
5. App Store description/review notes and exact-build corresponding-source/notices
   delivery, with a separate dependency review for every remaining component.

Recommendation: retain the current build for development, obtain a rights-holder
answer before choosing whether to fund that variant. Never mark the license gate
complete merely because CI passes or Apple processes an upload. Source publishing
and internal/non-store distribution also have their own license obligations.

## Questions ready for rights-holder review (not sent)

- Who can authorize an App Store distribution exception for this exact subset and
  the bundled 1.08.003 model/database assets? Is an assignment/consent chain available?
- Are Apple usage/redistribution/signing restrictions permitted by that exception,
  including downstream recipients' rights and installation-information duties?
- What source, modification notices, offer duration and release tagging are required?
- Does permission cover model updates and future upstream code, or only pinned hashes?

No external message, contract acceptance or license purchase was performed.
