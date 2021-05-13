### Issue Info

------------
Project: clamav\
Fuzzing Engine: libFuzzer\
Fuzz Target: clamav_scanmap_fuzzer\
Job Type: libfuzzer_asan_clamav\
Platform Id: linux\

Crash Type: Direct-leak\
Crash Address: \
Crash State:\
  cli_realloc\
  cli_codepage_to_utf8\
  cli_vba_readdir_new\
  
Sanitizer: address (ASAN)

### Commit Info

---------

Buggy commit: 8081a6b06cc9f3ceeb06e9a8664db8ae1cca6c16 

Fix commit: 20490786224f4a8256fb395deb9c05084db91708 
 
Correct version commit: 7a70a03ba01d657296be61f0ec98ca6990f51578 

Testcase: 5762701073842176



### Fault Info

-----------------

3 changed file / 70 deletions / 28 additions 

- libclamav/blob.c
- libclamav/entconv.c
- libclamav/vba_extract.c

