### Issue Info

------------

Project: clamav
Fuzzing Engine: libFuzzer
Fuzz Target: clamav_scanmap_fuzzer
Job Type: libfuzzer_asan_clamav
Platform Id: linux

Crash Type: Null-dereference READ
Crash Address: 0x000000000000
Crash State:
  rijndaelDecrypt
  aes_256cbc_decrypt
  check_user_password
  
Sanitizer: address (ASAN)

### Commit Info

---------

Buggy commit: 3c556dc1a28298312eb64b60cc03c83adda2e777

Fix commit: 205d8dcd6e4c980a23e362f455ce5682e5f059b9 
 
Correct version commit: 7a70a03ba01d657296be61f0ec98ca6990f51578 

Testcase: 5761546081533952


### Fault Info

-----------------

1 changed file / 26 deletions / 9 additions 

- libclamav/pdf.c

