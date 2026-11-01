// Host-only regression check. This is never linked into Runner.app.
#include <CommonCrypto/CommonDigest.h>

#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <vector>

// grpc-binary prefixes its BoringSSL symbols with GRPC_. The test compares
// that pinned baseline SHA-1 implementation with the iOS CommonCrypto API.
extern "C" unsigned char* GRPC_SHA1(const unsigned char*, size_t, unsigned char*);

int main() {
  constexpr size_t kDigestLength = CC_SHA1_DIGEST_LENGTH;
  const size_t lengths[] = {0, 1, 33, 65536, 1048576};

  for (size_t length : lengths) {
    std::vector<uint8_t> input(length);
    for (size_t i = 0; i < length; ++i) {
      input[i] = static_cast<uint8_t>((i * 37 + 11) & 0xff);
    }

    uint8_t baseline[kDigestLength];
    uint8_t common_crypto[kDigestLength];
    GRPC_SHA1(input.data(), input.size(), baseline);
    CC_SHA1(input.data(), static_cast<CC_LONG>(input.size()), common_crypto);
    if (std::memcmp(baseline, common_crypto, kDigestLength) != 0) {
      std::fprintf(stderr, "SHA-1 mismatch for %zu-byte cache key\n", length);
      return 1;
    }
  }

  std::puts("CommonCrypto SHA-1 matches the pinned BoringSSL baseline for 5 vectors.");
  return 0;
}
