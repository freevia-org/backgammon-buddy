"""Smoke-test adapters before accepting any benchmark measurements."""
import json
import sys
from pathlib import Path

import bgsage
import bgsage.gnubg as g

root = Path(__file__).resolve().parents[2]
g.GNUBG_CLI = str(root / 'app/build/engine-benchmark/deps/gnubg/gnubg-cli.exe')
sample = json.loads((root / 'app/build/engine-benchmark/sample.json').read_text())['decisions']
d = next(d for d in sample if d['kind'] == 'checker')
print('decision', d['sample_id'], 'context', {k: d.get(k) for k in ['away1','away2','cube_owner','cube_value']}, flush=True)
a = g.GnuBgAnalyzer('3ply', jacoby=False)
cmd = a._build_preroll_command(d['board'], d['cube_value'], d['cube_owner'], jacoby=False)
cmd = cmd.replace('set cube value', 'set turn 1\nset cube value')
cmd = 'set automatic game off\nset automatic move off\nset automatic roll off\nset player 0 human\nset player 1 human\nset evaluation sameasanalysis off\n' + cmd
cmd = 'set analysis chequer eval plies 2\nset analysis cubedecision eval plies 2\nset player 0 chequer eval plies 2\nset player 1 chequer eval plies 2\n' + cmd
cmd = cmd.replace('hint\n', f'set dice {d["dice"][0]} {d["dice"][1]}\nclear hint\nhint 1\nshow evaluation\n')
print(g._run_gnubg(cmd)[-5500:], flush=True)
s = bgsage.create_analyzer('1ply', cubeful=True)
result = s.checker_play(d['board'], *d['dice'], cube_value=d['cube_value'], cube_owner=d['cube_owner'], jacoby=False)
print('Sage result', result.moves[0], flush=True)
cube = next(d for d in sample if d['kind'] == 'cube' and d['corpus'] == 'match5')
print('cube sample', json.dumps(cube), flush=True)
print('GNU cube', a.cube_action(cube['board'], cube['cube_value'], cube['cube_owner'],
    away1=cube['away1'], away2=cube['away2'], is_crawford=cube['is_crawford']), flush=True)
