### Project Description

------------

[libjpeg-turbo](https://github.com/libjpeg-turbo/libjpeg-turbo) is a JPEG image codec that uses SIMD instructions to accelerate baseline JPEG compression and decompression on x86, x86-64, Arm, PowerPC, and MIPS systems, as well as progressive JPEG compression on x86, x86-64, and Arm systems. 



3 issues are available now.



### Overall timeline

----------------

| #    | Commit                                                       | Label      | Reproducible Issue ID |
| ---- | ------------------------------------------------------------ | ---------- | --------------------- |
| 1    | [2021. 04. 06.](https://github.com/sailfishos-mirror/libjpeg-turbo/commit/df17d398eca83d6de2f42cade70d317bebeec071) | Buggy      | 32966 32982 33001     |
| 2    | [2021. 04. 07.](https://github.com/sailfishos-mirror/libjpeg-turbo/commit/f35fd27ec641c42d6b115bfa595e483ec58188d2) | Fix: 32966 | 32982 33001           |
| 3    | [2021. 04. 08.](https://github.com/sailfishos-mirror/libjpeg-turbo/commit/3311fc00010c6cb305d87525c9ef60ebdf036cfc) | Buggy      | 32982 33001           |
| 4    | [2021. 04. 08.](https://github.com/sailfishos-mirror/libjpeg-turbo/commit/b1079002ad451aab896617098b6bcbaae1d967e4) | Fix: 33001 | 32982                 |
| 5    | [2021. 04. 10.](https://github.com/sailfishos-mirror/libjpeg-turbo/commit/dd830b3ffe30a76fbe8c1f13ebc7483c9ff792e5) | Buggy      | 32982                 |
| 6    | [2021. 04. 13.](https://github.com/sailfishos-mirror/libjpeg-turbo/commit/ebaa67ea32b3f3f28e10ab1ee4ed9bbacd632013) | Fix: 32982 |                       |



### Bug Info

---------

[Issue 32966: libjpeg-turbo:compress_fuzzer: Abrt in jpeg_free_large](https://bugs.chromium.org/p/oss-fuzz/issues/detail?id=32966&q=32966&can=1)

[Issue 33001: libjpeg-turbo:compress_fuzzer: Use-of-uninitialized-value in get_gray_cmyk_row](https://bugs.chromium.org/p/oss-fuzz/issues/detail?id=33001&q=33001&can=1)

[Issue 32982: libjpeg-turbo:compress_fuzzer: Integer-overflow in start_input_bmp](https://bugs.chromium.org/p/oss-fuzz/issues/detail?id=32982&q=32982&can=1)

