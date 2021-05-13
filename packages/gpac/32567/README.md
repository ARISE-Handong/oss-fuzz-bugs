### Issue Info

------------

Project: gpac
Fuzzing Engine: libFuzzer
Fuzz Target: fuzz_parse
Job Type: libfuzzer_asan_gpac
Platform Id: linux

Crash Type: Null-dereference READ
Crash Address: 0x000000000000
Crash State:
  AV1_DuplicateConfig
  AV1_RewriteESDescriptorEx
  AV1_RewriteESDescriptor
  
Sanitizer: address (ASAN)

### Commit Info

---------

Buggy commit: cd3738dea038dbd12e603ad48cd7373ae0440f65

Fix commit: b2eab95e07cb5819375a50358d4806a8813b6e50
 
Correct version commit: e74be5976a6fee059c638050a237893f7e9a3b23

Testcase: 5667241401122816



### Fault Info

-----------------

1 changed file / 4 deletions / 3 additions 

- src/isomedia/avc_ext.c

