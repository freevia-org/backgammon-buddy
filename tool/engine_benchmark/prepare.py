"""Select a pinned, seeded sample without changing the app or its models."""
import argparse
import collections
import gzip
import hashlib
import json
import random
from pathlib import Path


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--source', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--checkers', type=int, default=200)
    parser.add_argument('--cubes', type=int, default=100)
    args = parser.parse_args()
    rng = random.Random(20261014)
    selected, provenance = [], []
    for name, relative in [('money', 'data/money_benchmark/benchmark.json.gz'),
                           ('match5', 'data/match_benchmark/5pt/benchmark.json.gz')]:
        path = args.source / relative
        with gzip.open(path, 'rt') as stream:
            corpus = json.load(stream)
        print(name, 'metadata', json.dumps(corpus['meta']), flush=True)
        groups = collections.defaultdict(list)
        for decision in corpus['decisions']:
            groups[decision['kind']].append(decision)
        print('kinds', {k: len(v) for k, v in groups.items()}, flush=True)
        for kind, entries in groups.items():
            print('example', kind, json.dumps(entries[0])[:1800], flush=True)
            # Omit forced moves; agreement on those is uninformative.
            eligible = [d for d in entries if kind != 'checker' or len(d['moves']) > 1]
            count = args.checkers if kind == 'checker' else args.cubes
            for decision in rng.sample(eligible, min(count, len(eligible))):
                copied = dict(decision)
                copied['corpus'] = name
                copied['sample_id'] = f'{name}:{kind}:{decision["key"]}'
                selected.append(copied)
        provenance.append({'corpus': name, 'path': relative, 'sha256': sha(path),
                           'meta': corpus['meta']})
        del corpus, groups
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps({'seed': 20261014,
                                     'reference_commit': '98a6d848af3ed6cf528694ef42ce42e0f75e8931',
                                     'reference': provenance, 'decisions': selected}, indent=2),
                           encoding='utf-8')
    print('selected', len(selected), 'sha256', sha(args.output), flush=True)


if __name__ == '__main__':
    main()
