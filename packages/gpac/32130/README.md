### Issue Info

------------

Project: gpac\
Fuzzing Engine: libFuzzer\
Fuzz Target: fuzz_parse\
Job Type: libfuzzer_ubsan_gpac\
Platform Id: linux

Crash Type: Integer-overflow\
Crash Address: \
Crash State:\
  gf_avc_read_sps_bs_internal\
  gf_avc_read_sps_bs\
  gf_avc_read_sps
  
Sanitizer: undefined (UBSAN)

### Commit Info

---------

Buggy commit: c0b116512dce4ed77eb7c04bb37168fa15ff67b1 

Fix commit: 020ca151321a9692a28e63c88f1dbbe9deca9813
 
Correct version commit: e74be5976a6fee059c638050a237893f7e9a3b23

Testcase: 4804140954943488



### Fault Info

-----------------

1 changed file / 25 deletions / 41 additions 

- src/media_tools/av_parser.c

