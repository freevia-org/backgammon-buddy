// Host-only regression check. This is never linked into Runner.app.
#include <CommonCrypto/CommonDigest.h>

#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <string>
#include <vector>

struct Vector {
  size_t length;
  const char* expected_hex;
};

int main() {
  // Expected digests are fixed SHA-1 known-answer values, generated
  // independently of CommonCrypto. The input formula matches the lengths
  // used for Flutter's persistent-cache key regression coverage.
  constexpr Vector kVectors[] = {
      {0, "da39a3ee5e6b4b0d3255bfef95601890afd80709"},
      {1, "067d5096f219c64b53bb1c7d5e3754285b565a47"},
      {33, "6c150252887fe3e0f4f4165da9c9e53aeabf1dec"},
      {65536, "cbb517f1eca9d4a41c9bd716837fd41c0307e865"},
      {1048576, "4475b55aee2d3652ab75a54f108ac02f7ef2fe6b"},
  };

  for (const Vector& vector : kVectors) {
    std::vector<uint8_t> input(vector.length);
    for (size_t i = 0; i < vector.length; ++i) {
      input[i] = static_cast<uint8_t>((i * 37 + 11) & 0xff);
    }

    uint8_t digest[CC_SHA1_DIGEST_LENGTH];
    CC_SHA1(input.data(), static_cast<CC_LONG>(input.size()), digest);

    char actual_hex[CC_SHA1_DIGEST_LENGTH * 2 + 1];
    for (size_t i = 0; i < CC_SHA1_DIGEST_LENGTH; ++i) {
      std::snprintf(actual_hex + i * 2, 3, "%02x", digest[i]);
    }
    if (std::string(actual_hex) != vector.expected_hex) {
      std::fprintf(stderr,
                   "CommonCrypto SHA-1 mismatch for %zu-byte cache key: %s\n",
                   vector.length, actual_hex);
      return 1;
    }
  }

  std::puts("CommonCrypto SHA-1 matches all 5 fixed known-answer vectors.");
  return 0;
}
