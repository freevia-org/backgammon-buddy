"""Verify exact MPL source/notice coverage for OkHttp 4.12.0, entirely offline.

Reproduce the uncompressed data format of the pinned upstream generator; gzip
compressor versions need not produce identical compressed bytes. Optionally
compare against the actual resolved JAR rather than only its recorded hash.
"""

import argparse
import gzip
import hashlib
import json
from pathlib import Path
import struct
import zipfile


ASSETS = Path(__file__).resolve().parents[1] / "app/assets/licenses"
HASHES = {
    "okhttp-publicsuffix-4.12.0-source.dat": "e8b273972eb5a70e888bd3e7d7c5b9b04e600a59d69def9136a74d70ae6fcdd3",
    "okhttp-publicsuffix-NOTICE.txt": "8a9c58fbded5ea3474315e4a9824ca8b1486098a1a03e897e0b19419d5e1876a",
    "okhttp-publicsuffix-MPL-2.0.txt": "3f3d9e0024b1921b067d6f7f88deb4a60cbe7a78e76c64e3f1d7fc3b779b9d04",
}
RESOURCE = "okhttp3/internal/publicsuffix/publicsuffixes.gz"
GZIP_SHA256 = "9af43e9995ec749e7a30eec4e5a87770d7e2027847084a07cca82060eff0c791"
PAYLOAD_SHA256 = "5beda335cfa1a9a9f84c4d17f2267ad7304c3c23d14d41256032d78db274431f"


def compile_source(source: bytes) -> bytes:
    """UTF-8 byte sort, split exceptions, then two big-endian length prefixes."""
    rules = set()
    exceptions = set()
    for line in source.splitlines():
        if not line.strip() or line.startswith(b"//"):
            continue
        line.decode("utf-8", errors="strict")
        if line.startswith(b"!"):
            exceptions.add(line[1:])
        else:
            rules.add(line)
    normal = b"".join(rule + b"\n" for rule in sorted(rules))
    exceptional = b"".join(rule + b"\n" for rule in sorted(exceptions))
    return struct.pack(">I", len(normal)) + normal + struct.pack(">I", len(exceptional)) + exceptional


def verify(assets: Path = ASSETS, jar: Path | None = None) -> dict:
    for name, expected in HASHES.items():
        if hashlib.sha256((assets / name).read_bytes()).hexdigest() != expected:
            raise ValueError(f"Pinned upstream source or license changed: {name}")
    source = (assets / "okhttp-publicsuffix-4.12.0-source.dat").read_bytes()
    payload = compile_source(source)
    if hashlib.sha256(payload).hexdigest() != PAYLOAD_SHA256:
        raise ValueError("Source does not reproduce OkHttp 4.12.0 public-suffix data")
    if jar is not None:
        with zipfile.ZipFile(jar) as archive:
            if archive.getinfo(RESOURCE).file_size > 65536:
                raise ValueError("Unexpected public-suffix resource size")
            compressed = archive.read(RESOURCE)
            if hashlib.sha256(compressed).hexdigest() != GZIP_SHA256:
                raise ValueError("Resolved JAR has a different public-suffix resource")
            if gzip.decompress(compressed) != payload:
                raise ValueError("Source differs from the actual resolved JAR")
            notice = archive.read("okhttp3/internal/publicsuffix/NOTICE")
            if notice != (assets / "okhttp-publicsuffix-NOTICE.txt").read_bytes():
                raise ValueError("Bundled notice differs from actual resolved JAR")
    return {"component": "OkHttp 4.12.0 public-suffix list", "sourceVerified": True,
            "jarVerified": jar is not None, "payloadSha256": PAYLOAD_SHA256}


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--jar", type=Path, help="Optional resolved okhttp-4.12.0.jar")
    args = parser.parse_args()
    print(json.dumps(verify(jar=args.jar)))
