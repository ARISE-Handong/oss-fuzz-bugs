### Issue Info

------------

Project: libjpeg-turbo
Fuzzing Engine: libFuzzer
Fuzz Target: compress_fuzzer
Job Type: libfuzzer_msan_libjpeg-turbo
Platform Id: linux

Crash Type: Use-of-uninitialized-value
Crash Address: 
Crash State:
  get_gray_cmyk_row
  tjLoadImage
  compress.cc
  
Sanitizer: memory (MSAN)

### Commit Info

---------

Buggy commit: 3311fc00010c6cb305d87525c9ef60ebdf036cfc 

Fix commit: b1079002ad451aab896617098b6bcbaae1d967e4 
 
Correct version commit: ebaa67ea32b3f3f28e10ab1ee4ed9bbacd632013 

Testcase: 5679542338453504


### Fault Info

-----------------

1 changed file / 2 deletions / 0 additions 

- rdppm.c
