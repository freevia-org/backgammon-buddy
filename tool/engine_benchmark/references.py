"""Run reference engines; preserve raw answers and validate every chosen board."""
import argparse
import dataclasses
import json
import time
from pathlib import Path

import bgsage


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--sample', type=Path, required=True)
    parser.add_argument('--wildbg', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--level', choices=['1ply', '2ply'], default='1ply')
    args = parser.parse_args()
    sample = json.loads(args.sample.read_text())['decisions']
    wild = {r['sample_id']: r for line in args.wildbg.read_text().splitlines()
            if (r := json.loads(line)).get('sample_id')}
    start = time.perf_counter()
    analyzer = bgsage.create_analyzer(args.level, cubeful=True, parallel_threads=1)
    with args.output.open('w', encoding='utf-8') as stream:
        stream.write(json.dumps({'kind': 'metadata', 'engine': 'Open Sage',
            'package_version': '2.0.20260907', 'model': bgsage.PRODUCTION_MODEL,
            'level': args.level, 'n_threads': 1,
            'startup_ms': (time.perf_counter() - start) * 1000}) + '\n')
        for index, d in enumerate(sample):
            ctx = dict(cube_value=d['cube_value'], cube_owner=d['cube_owner'],
                       away1=d.get('away1', 0), away2=d.get('away2', 0),
                       is_crawford=d.get('is_crawford', False),
                       jacoby=d['corpus'] == 'money', beaver=True)
            t = time.perf_counter()
            if d['kind'] == 'checker':
                result = analyzer.checker_play(d['board'], *d['dice'], **ctx)
                elapsed = (time.perf_counter() - t) * 1000
                legal = {tuple(m['board']) for m in wild[d['sample_id']]['moves']}
                independent = {tuple(b) for b in bgsage.possible_moves(d['board'], *d['dice'])}
                if legal != independent:
                    raise RuntimeError(f'Legal move set mismatch {d["sample_id"]}: {len(legal)} vs {len(independent)}')
                if tuple(result.moves[0].board) not in legal:
                    raise RuntimeError(f'Illegal Sage pick {d["sample_id"]}')
                record = {'sample_id': d['sample_id'], 'kind': 'checker',
                          'chosen_board': result.moves[0].board,
                          'chosen_equity': result.moves[0].equity,
                          'probs': dataclasses.asdict(result.moves[0].probs),
                          'latency_ms': elapsed, 'legal_boards_verified': len(legal)}
            else:
                result = analyzer.cube_action(d['board'], **ctx)
                elapsed = (time.perf_counter() - t) * 1000
                record = {'sample_id': d['sample_id'], 'kind': 'cube',
                          **dataclasses.asdict(result), 'latency_ms': elapsed}
            stream.write(json.dumps(record) + '\n')
            stream.flush()
            if (index + 1) % 50 == 0:
                print('Sage', args.level, index + 1, 'decisions', flush=True)


if __name__ == '__main__':
    main()
