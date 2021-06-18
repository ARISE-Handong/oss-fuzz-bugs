### Project Description

------------

[gpac](https://github.com/gpac/gpac) is an open-source multimedia framework focused on modularity and standards compliance. 



4 issues are available now.

 

### Timeline

----------------

| #    | Commit                                                       | Label      | Reproducible Issue ID   |
| ---- | ------------------------------------------------------------ | ---------- | ----------------------- |
| 1    | [2021. 03. 11.](https://github.com/gpac/gpac/commit/c4a5109dad73abe25ad12d8d529a728ae98d78ca) | Buggy      | 31902 31925 32130 32567 |
| 2    | [2021. 03. 11.](https://github.com/gpac/gpac/commit/8986422c21fbd9a7bf6561cae65aae42077447e8) | Fix: 31925 | 31902 32130 32567       |
| 3    | [2021. 03. 24.](https://github.com/gpac/gpac/commit/c0b116512dce4ed77eb7c04bb37168fa15ff67b1) | Buggy      | 31902 32130 32567       |
| 4    | [2021. 03. 25.](https://github.com/gpac/gpac/commit/020ca151321a9692a28e63c88f1dbbe9deca9813) | Fix: 32130 | 31902 32567             |
| 5    | [2021. 04. 09.](https://github.com/gpac/gpac/commit/cd3738dea038dbd12e603ad48cd7373ae0440f65) | Buggy      | 31902 32567             |
| 6    | [2021. 04. 09.](https://github.com/gpac/gpac/commit/b2eab95e07cb5819375a50358d4806a8813b6e50) | Fix: 32567 | 31902                   |
| 7    | [2021. 04. 22.](https://github.com/gpac/gpac/commit/da59a5b8fed9e1c260b8e87ea0bfe7d8d5369fcd) | Buggy      | 31902                   |
| 8    | [2021. 04. 22.](https://github.com/gpac/gpac/commit/e74be5976a6fee059c638050a237893f7e9a3b23) | Fix: 31902 |                         |



### Bug Info

---------

[Issue 31925: gpac:fuzz_parse: Abrt in gf_realloc](https://bugs.chromium.org/p/oss-fuzz/issues/detail?id=31925&q=31925&can=1)

[Issue 32130: gpac:fuzz_parse: Integer-overflow in gf_avc_read_sps_bs_internal](https://bugs.chromium.org/p/oss-fuzz/issues/detail?id=32130&q=32130&can=1)

[Issue 32567: gpac:fuzz_parse: Null-dereference READ in AV1_DuplicateConfig](https://bugs.chromium.org/p/oss-fuzz/issues/detail?id=32567&q=32567&can=1)

[Issue 31902: gpac:fuzz_parse: Heap-buffer-overflow in gf_strdup](https://bugs.chromium.org/p/oss-fuzz/issues/detail?id=31925&q=31925&can=1)


There is known bugs that were found in latest version

* ASAN 
- Segment fault 
- Leak

* UBSAN
- Segment fault
