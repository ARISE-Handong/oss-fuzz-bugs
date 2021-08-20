
Build fuzzers with following options in project directory

   ```bash
   $ cd $PROJECT_NAME
   $ ../build.sh \
   [-i|--id] $ISSUE_ID [-b|--build] <buggy/fix/single>
   [-s|--sanitizer] <address/memory/undefined> [-f|--fuzzer] <libfuzzer/afl>
   ```
