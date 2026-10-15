"""GNUbg CLI adapter with fixed perspective and retained raw diagnostics."""
import argparse
import concurrent.futures
import json
import re
import time
from pathlib import Path

import bgsage.gnubg as g

PREFIX = ('set automatic game off\nset automatic move off\nset automatic roll off\n'
          'set player 0 human\nset player 1 human\nset tutor mode off\n'
          'set evaluation sameasanalysis off\nset output mwc off\n')


def apply_notation(board, notation):
    board = list(board)
    for token in notation.split():
        match = re.fullmatch(r'(.+?)(?:\((\d+)\))?', token)
        path = match[1].replace('*', '').split('/')
        count = int(match[2] or 1)
        for _ in range(count):
            for origin, destination in zip(path, path[1:]):
                src = 25 if origin == 'bar' else int(origin)
                dest = None if destination == 'off' else int(destination)
                if board[src] <= 0:
                    raise ValueError(f'Wrong move perspective: {notation}, source {src}')
                board[src] -= 1
                if dest is not None:
                    if board[dest] == -1:
                        board[dest] = 0
                        board[0] += 1
                    if board[dest] < 0:
                        raise ValueError('Move onto blocked point')
                    board[dest] += 1
    return board


def run_one(index, d, wild, analyzer, logs):
    context = dict(away1=d.get('away1', 0), away2=d.get('away2', 0),
                   is_crawford=d.get('is_crawford', False), jacoby=d['corpus'] == 'money')
    cmd = analyzer._build_preroll_command(d['board'], d['cube_value'], d['cube_owner'], **context)
    # set board simple is relative to the CURRENT player on roll. Set it first,
    # rather than inheriting GNUbg's random opening-roll player.
    cmd = PREFIX + cmd.replace('set cube value', 'set turn 1\nset cube value')
    if d['kind'] == 'checker':
        cmd = cmd.replace('hint\n', f'set dice {d["dice"][0]} {d["dice"][1]}\nclear hint\nhint 1\n')
    else:
        # set board clears the opening dice; zero dice is not a valid set-dice
        # command in GNUbg. A pre-roll hint goes directly to cube analysis.
        cmd = cmd.replace('hint\n', 'clear hint\nhint\n')
    start = time.perf_counter()
    output = g._run_gnubg(cmd, timeout=180)
    elapsed = (time.perf_counter() - start) * 1000
    (logs / f'{index:04d}.txt').write_text(cmd + '\n--- OUTPUT ---\n' + output, encoding='utf-8')
    record = {'sample_id': d['sample_id'], 'kind': d['kind'], 'latency_ms': elapsed}
    if d['kind'] == 'checker':
        line = next((line for line in output.splitlines() if re.match(r'^\s*1\.', line)), None)
        if line is None:
            raise ValueError(f'No GNU checker hint: {d["sample_id"]}')
        fields = re.split(r'\s{2,}', re.sub(r'^\s*1\.\s*', '', line))
        chosen = apply_notation(d['board'], fields[1])
        if tuple(chosen) not in {tuple(m['board']) for m in wild[d['sample_id']]['moves']}:
            raise ValueError(f'Illegal GNU choice: {d["sample_id"]} {fields[1]}')
        record.update(chosen_board=chosen, notation=fields[1], actual_eval_label=fields[0])
    else:
        if ('Cube analysis' not in output and d.get('away1', 0) > 0
                and d['away1'] <= d['cube_value'] and d['cube_owner'] == 'player'
                and d['has_double'] and not d['has_take']):
            # Raising an owned cube cannot increase the points needed to win
            # this match. GNUbg suppresses the no-value redouble hint. This
            # result follows from the context, never from the reference pick.
            record.update(should_double=False, should_take=None,
                          context_rule='owned cube already covers mover away count; no-value redouble')
            return record
        r, _ = g._parse_cube_analytics_full(output)
        record.update(should_double=min(r['equity_dt'], r['equity_dp']) > r['equity_nd'],
                      should_take=r['equity_dt'] <= r['equity_dp'],
                      equity_nd=r['equity_nd'], equity_dt=r['equity_dt'], equity_dp=r['equity_dp'],
                      probs=[r['p_win'],r['p_gw'],r['p_bw'],r['p_gl'],r['p_bl']])
    return record


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--sample', type=Path, required=True)
    parser.add_argument('--wildbg', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--cli', type=Path, required=True)
    parser.add_argument('--plies', type=int, default=2)
    parser.add_argument('--workers', type=int, default=4)
    parser.add_argument('--redo-cubes', action='store_true')
    args = parser.parse_args()
    g.GNUBG_CLI = str(args.cli.resolve())
    sample = json.loads(args.sample.read_text())['decisions']
    wild = {r['sample_id']: r for line in args.wildbg.read_text().splitlines()
            if (r := json.loads(line)).get('sample_id')}
    logs = args.output.with_suffix('')
    logs.mkdir(exist_ok=True)
    analyzer = g.GnuBgAnalyzer(f'{args.plies + 1}ply')
    retained = []
    if args.redo_cubes:
        retained = [json.loads(line) for line in args.output.read_text().splitlines()
                    if json.loads(line).get('kind') == 'checker']
        if len(retained) != sum(d['kind'] == 'checker' for d in sample):
            raise ValueError('Cannot retain incomplete checker results')
    # Repeat one orientation-sensitive position to catch random-opening leakage.
    probe = next((i,d) for i,d in enumerate(sample) if d['kind'] == 'checker')
    picks = [run_one(*probe, wild, analyzer, logs)['chosen_board'] for _ in range(3)]
    if any(p != picks[0] for p in picks[1:]):
        raise RuntimeError('GNU orientation/determinism probe failed')
    with args.output.open('w', encoding='utf-8') as stream:
        stream.write(json.dumps({'kind': 'metadata', 'engine': 'GNU Backgammon',
            'version': '1.08.003-mingw 32-Bit 20240428', 'requested_native_plies': args.plies,
            'move_filter': 'GNU default; obvious moves may remain at shallower depth',
            'workers': args.workers, 'timing_includes_process_startup': True,
            'orientation_probe_repetitions': 3}) + '\n')
        for record in retained:
            stream.write(json.dumps(record) + '\n')
        with concurrent.futures.ThreadPoolExecutor(max_workers=args.workers) as pool:
            jobs = {pool.submit(run_one, i, d, wild, analyzer, logs): d['sample_id']
                    for i, d in enumerate(sample) if not args.redo_cubes or d['kind'] == 'cube'}
            for count, future in enumerate(concurrent.futures.as_completed(jobs), 1):
                record = future.result()
                stream.write(json.dumps(record) + '\n')
                stream.flush()
                if count % 25 == 0:
                    print('GNU', args.plies, 'ply:', count, 'decisions', flush=True)


if __name__ == '__main__':
    main()
