### Issue Info

------------

Project: libjpeg-turbo\
Fuzzing Engine: libFuzzer\
Fuzz Target: compress_fuzzer\
Job Type: libfuzzer_ubsan_libjpeg-turbo\
Platform Id: linux

Crash Type: Abrt\
Crash Address: 0x05390000199f\
Crash State:\
  jpeg_free_large\
  self_destruct\
  jpeg_destroy
  
Sanitizer: undefined (UBSAN)

### Commit Info

---------

Buggy commit:  df17d398eca83d6de2f42cade70d317bebeec071

Fix commit: f35fd27ec641c42d6b115bfa595e483ec58188d2 
 
Correct version commit: ebaa67ea32b3f3f28e10ab1ee4ed9bbacd632013 

Testcase: 5128522059350016



### Fault Info

-----------------

1 changed file / 3 deletions / 3 additions 

- jcphuff.c
