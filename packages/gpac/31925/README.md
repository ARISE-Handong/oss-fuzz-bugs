### Issue Info

------------

Project: gpac\
Fuzzing Engine: libFuzzer\
Fuzz Target: fuzz_parse\
Job Type: libfuzzer_ubsan_gpac\
Platform Id: linux

Crash Type: Abrt\
Crash Address: 0x053900002ca9\
Crash State:\
  gf_realloc\
  gf_list_add\
  gf_isom_parse_movie_boxes_internal

Sanitizer: undefined (UBSAN)



### Commit Info

---------

Buggy commit: c4a5109dad73abe25ad12d8d529a728ae98d78ca

Fix commit: 8986422c21fbd9a7bf6561cae65aae42077447e8

Correct version commit: e74be5976a6fee059c638050a237893f7e9a3b23

Testcase: 5570437108072448 



### Fault Info

-----------------

1 changed file / 9 deletions / 0 additions 

- src/box_code_drm.c

