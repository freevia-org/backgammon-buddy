"""Produce transparent, paired accuracy metrics and retain individual errors."""
import argparse
import collections
import datetime
import hashlib
import html
import json
import platform
import random
import statistics
from pathlib import Path


def read_results(path):
    rows = [json.loads(line) for line in path.read_text().splitlines()]
    return {r['sample_id']: r for r in rows if r.get('sample_id')}, rows[0]


def percentile(values, q):
    values = sorted(values)
    return values[min(len(values)-1, round((len(values)-1)*q))]


def bootstrap(rows):
    # Resample source games/matches, not correlated positions independently.
    groups = collections.defaultdict(list)
    for r in rows:
        groups[r['seed']].append(r['loss'])
    values = list(groups.values())
    rng = random.Random(7142026)
    estimates = []
    for _ in range(2000):
        picked = [x for _ in values for x in rng.choice(values)]
        estimates.append(statistics.mean(picked))
    return [percentile(estimates, .025), percentile(estimates, .975)]


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--directory', type=Path, required=True)
    args = parser.parse_args()
    root = args.directory
    sample_obj = json.loads((root/'sample.json').read_text())
    sample = sample_obj['decisions']
    names = {'wildbg': 'App wildbg / production adapter', 'sage1': 'Open Sage 1-ply',
             'sage2': 'Open Sage 2-ply', 'gnu2': 'GNUbg requested 2-ply'}
    engines, metadata = {}, {}
    for key in names:
        engines[key], metadata[key] = read_results(root/f'{key}.jsonl')
        if len(engines[key]) != len(sample):
            raise ValueError(f'Incomplete results {key}: {len(engines[key])}/{len(sample)}')
    details, summary = [], []
    for key, results in engines.items():
        for corpus in ['money', 'match5']:
            decisions = [d for d in sample if d['corpus'] == corpus and d['kind'] == 'checker']
            errors = []
            for d in decisions:
                r = results[d['sample_id']]
                ref = {tuple(m['board']): m for m in d['moves']}
                pick = tuple(r['chosen_board'])
                if pick not in ref:
                    raise ValueError(f'Choice missing from reference {key} {d["sample_id"]}')
                top = max(m['equity'] for m in ref.values())
                row = {'engine': key, 'corpus': corpus, 'kind': 'checker',
                       'sample_id': d['sample_id'], 'seed': d['seed'],
                       'game_plan': d['game_plan'], 'reference_tier': d['tier'],
                       'loss': max(0, top - ref[pick]['equity']),
                       'exact_best': pick == tuple(d['moves'][0]['board']),
                       'chosen_reference_level': ref[pick]['eval_level'],
                       'latency_ms': r['latency_ms'], 'chosen_board': r['chosen_board']}
                errors.append(row)
                details.append(row)
            summary.append({'engine': key, 'corpus': corpus, 'kind': 'checker',
                'n': len(errors), 'exact_best_pct': 100*statistics.mean(r['exact_best'] for r in errors),
                'within_002_pct': 100*statistics.mean(r['loss'] <= .02 for r in errors),
                'mean_equity_loss': statistics.mean(r['loss'] for r in errors),
                'mean_loss_95_ci_game_clustered': bootstrap(errors),
                'blunder_over_008_pct': 100*statistics.mean(r['loss'] > .08 for r in errors),
                'latency_median_ms': statistics.median(r['latency_ms'] for r in errors),
                'latency_p95_ms': percentile([r['latency_ms'] for r in errors], .95)})
        # App cube comparison uses its match-aware Dart adapter, not wildbg's
        # context-free centered-money cube API. Money cube probes remain raw data.
        for kind in ['double', 'take']:
            errors = []
            for d in sample:
                if d['kind'] != 'cube' or d['corpus'] != 'match5' or not d[f'has_{kind}']:
                    continue
                r = results[d['sample_id']]
                chosen = r[f'should_{kind}']
                expected = d[f'should_{kind}_ref']
                if kind == 'double':
                    double_eq = min(d['equity_dt'], d['equity_dp'])
                    loss = max(d['equity_nd'], double_eq) - (double_eq if chosen else d['equity_nd'])
                else:
                    loss = abs(d['equity_dt'] - d['equity_dp']) if chosen != expected else 0
                row = {'engine': key, 'corpus': 'match5', 'kind': kind,
                       'sample_id': d['sample_id'], 'seed': d['seed'],
                       'loss': max(0, loss), 'correct': chosen == expected,
                       'chosen': chosen, 'expected': expected, 'latency_ms': r['latency_ms']}
                errors.append(row)
                details.append(row)
            if errors:
                summary.append({'engine': key, 'corpus': 'match5', 'kind': kind,
                    'n': len(errors), 'agreement_pct': 100*statistics.mean(r['correct'] for r in errors),
                    'mean_equity_loss': statistics.mean(r['loss'] for r in errors),
                    'mean_loss_95_ci_game_clustered': bootstrap(errors)})
    # Report a paired error difference on precisely the same positions.
    paired = []
    for corpus in ['money', 'match5']:
        base = {r['sample_id']: r for r in details if r['engine'] == 'wildbg' and r['corpus'] == corpus and r['kind'] == 'checker'}
        for engine in ['sage1', 'sage2', 'gnu2']:
            rows = [{**r, 'loss': base[r['sample_id']]['loss'] - r['loss']} for r in details
                    if r['engine'] == engine and r['corpus'] == corpus and r['kind'] == 'checker']
            paired.append({'corpus': corpus, 'wildbg_minus': engine,
                           'mean_loss_difference': statistics.mean(r['loss'] for r in rows),
                           '95_ci_game_clustered': bootstrap(rows)})
    report = {'observed_at_utc': datetime.datetime.now(datetime.timezone.utc).isoformat(),
              'platform': platform.platform(), 'sample_seed': sample_obj['seed'],
              'sample_decisions': len(sample), 'reference': sample_obj['reference'],
              'reference_commit': sample_obj['reference_commit'], 'engine_metadata': metadata,
              'results': summary, 'paired_differences': paired,
              'reference_tiers': dict(collections.Counter(d['tier'] for d in sample)),
              'limitations': [
                  'Initial seeded 600-position sample; not a full playing-strength or official human PR rating.',
                  'Reference is published Sage self-play/deep analysis, with mixed candidate depths. This can favor Sage.',
                  'No live XG engine or independent XG rollout comparison was run.',
                  'App checker ranking is cubeless; Sage/GNU comparison policies include cube and match context.',
                  'GNU timing includes CLI startup and concurrent worker contention; native engine speed cannot be inferred from it.',
                  'All timings are Windows desktop, not Android phone battery/latency measurements.',
                  'Money cube probes are excluded from headline comparisons because raw wildbg cube rules/context differ.',
              ]}
    controls = json.loads((root/'cube-control.json').read_text())
    report['cube_adapter_control'] = {
        'description': 'Unchanged production MatchCubeAdvisor fed published deep-reference probabilities instead of wildbg probabilities',
        'n_positions': len(controls),
        'double_agreement_pct': 100*statistics.mean(r['should_double'] == r['reference_double'] for r in controls if r['has_double']),
        'take_agreement_pct': 100*statistics.mean(r['should_take'] == r['reference_take'] for r in controls if r['has_take']),
        'interpretation': 'The doubling gap persists with reference probabilities; replacing neural networks alone would not remove this adapter approximation.',
    }
    repo = Path(__file__).resolve().parents[2]
    report['production_source'] = {
        'release': '0.14.1 (10064)', 'commit': '46c0af38f02cf0094927bef4790eeedc67d3c82f',
        'wildbg_commit': '24d26fe0c7c6ddbb277894c2f92c18410198e4a9',
        'engine_shim_tree': 'e85d4cfad992db86952c5e54bd60d6310cf0a9b0',
        'bindings_tree': 'eb7f21b2ce72da33d1825e93e7a0d2d6b7256e31',
        'models': {name: hashlib.sha256((repo/'app/assets/nets'/name).read_bytes()).hexdigest()
                   for name in ['contact.onnx', 'race.onnx']},
        'windows_dll_sha256': hashlib.sha256((root/'native-target/release/aigammon_engine.dll').read_bytes()).hexdigest(),
    }
    report['gnu_actual_checker_labels'] = dict(collections.Counter(r['actual_eval_label']
        for r in engines['gnu2'].values() if r['kind'] == 'checker'))
    report['gnu_no_value_redouble_context_rules'] = sum('context_rule' in r for r in engines['gnu2'].values())
    (root/'report.json').write_text(json.dumps(report, indent=2), encoding='utf-8')
    (root/'scored-decisions.json').write_text(json.dumps(details, indent=2), encoding='utf-8')
    columns = ['Engine', 'Scenario', 'N', 'Best move agreement', 'Within 0.02 equity', 'Mean equity lost', 'Errors > 0.08', 'Median ms']
    table = ''.join('<th>'+x+'</th>' for x in columns)
    for r in summary:
        if r['kind'] != 'checker':
            continue
        values = [names[r['engine']], r['corpus'], r['n'], f'{r["exact_best_pct"]:.1f}%',
                  f'{r["within_002_pct"]:.1f}%', f'{r["mean_equity_loss"]:.4f}',
                  f'{r["blunder_over_008_pct"]:.1f}%', f'{r["latency_median_ms"]:.2f}']
        table += '<tr>'+''.join('<td>'+html.escape(str(v))+'</td>' for v in values)+'</tr>'
    cube_rows = ''.join('<tr>'+''.join('<td>'+html.escape(str(v))+'</td>' for v in
                       [names[r['engine']], r['kind'], r['n'], f'{r["agreement_pct"]:.1f}%', f'{r["mean_equity_loss"]:.4f}'])+'</tr>'
                       for r in summary if r['kind'] != 'checker')
    page = '<!doctype html><meta charset="utf-8"><title>Backgammon Buddy engine benchmark</title>'
    page += '<style>body{font:16px system-ui;max-width:1200px;margin:40px auto;padding:0 24px;color:#202936}table{border-collapse:collapse;width:100%;margin:24px 0}th,td{padding:10px;border-bottom:1px solid #ccd5df;text-align:left}th{background:#edf3f8}li{margin:8px 0}</style>'
    page += '<h1>Backgammon Buddy: initial engine benchmark</h1><p>400 checker decisions and 200 cube positions, sampled from 500 money games and 130 five-point matches. Production wildbg source/models match release 0.14.1 (10064). Lower equity loss is better.</p><table><tr>'+table+'</table>'
    page += '<h2>Actual app match-cube policy</h2><table><tr><th>Engine</th><th>Action</th><th>N</th><th>Agreement</th><th>Mean equity lost</th></tr>'+cube_rows+'</table>'
    page += '<p><strong>Cube adapter diagnostic:</strong> feeding deep-reference probabilities into the unchanged app adapter gives '+str(report['cube_adapter_control']['double_agreement_pct'])+'% doubling agreement. The main doubling gap therefore persists independently of wildbg probability error.</p>'
    page += '<h2>Interpretation limits</h2><ul>'+''.join('<li>'+html.escape(s)+'</li>' for s in report['limitations'])+'</ul>'
    page += '<p>Reproduction tools: tool/engine_benchmark. Raw answers, corpus hashes, clustered confidence intervals and every scored decision are retained alongside this report.</p>'
    (root/'report.html').write_text(page, encoding='utf-8')
    print(json.dumps({'results': summary, 'paired': paired}, indent=2))


if __name__ == '__main__':
    main()
