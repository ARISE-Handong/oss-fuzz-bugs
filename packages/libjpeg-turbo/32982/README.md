### Issue Info

------------

Project: libjpeg-turbo
Fuzzing Engine: libFuzzer
Fuzz Target: compress_fuzzer
Job Type: libfuzzer_ubsan_libjpeg-turbo
Platform Id: linux

Crash Type: Integer-overflow
Crash Address: 
Crash State:
  start_input_bmp
  tjLoadImage
  compress.cc
  
Sanitizer: undefined (UBSAN)

### Commit Info

---------

Buggy commit: dd830b3ffe30a76fbe8c1f13ebc7483c9ff792e5 

Fix commit: ebaa67ea32b3f3f28e10ab1ee4ed9bbacd632013
 
Correct version commit: ebaa67ea32b3f3f28e10ab1ee4ed9bbacd632013 

Testcase: 5382179707289600 


### Fault Info

-----------------

1 changed file / 3 deletions / 3 additions 

- rdbpm.c
