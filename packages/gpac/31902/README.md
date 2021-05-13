### Issue Info

------------

Project: gpac
Fuzzing Engine: libFuzzer
Fuzz Target: fuzz_parse
Job Type: libfuzzer_asan_gpac
Platform Id: linux

Crash Type: Heap-buffer-overflow READ 9
Crash Address: 0x602000000138
Crash State:
  gf_strdup
  abst_box_read
  gf_isom_box_read
  
Sanitizer: address (ASAN)

### Commit Info

---------

Buggy commit: da59a5b8fed9e1c260b8e87ea0bfe7d8d5369fcd 

Fix commit: e74be5976a6fee059c638050a237893f7e9a3b23 
 
Correct version commit: e74be5976a6fee059c638050a237893f7e9a3b23

Testcase: 5479477149827072



### Fault Info

-----------------

2 changed file / 59 deletions / 36 additions 

- include/gpac/internal/isomedia_dev.h
- src/isomedia/box_code_adobe.c

