### Issue Info

------------

Project: clamav\
Fuzzing Engine: libFuzzer\
Fuzz Target: clamav_scanmap_fuzzer\
Job Type: libfuzzer_asan_clamav\
Platform Id: linux\

Crash Type: Heap-buffer-overflow READ 1\
Crash Address: 0x602000006732\
Crash State:\
  rijndaelDecrypt\
  aes_256cbc_decrypt\
  check_user_password\
  
Sanitizer: address (ASAN)

Recommended Security Severity: Medium

### Commit Info

---------

Buggy commit: c63ccbf878bb0989cfbe51740ca2008bdc766a8e 

Fix commit: 7a70a03ba01d657296be61f0ec98ca6990f51578 
 
Correct version commit: 7a70a03ba01d657296be61f0ec98ca6990f51578 

Testcase: 5479722467328000


### Fault Info

-----------------

1 changed file / 46 deletions / 42 additions 

- libclamav/pdf.c

