# oss-fuzz-bugs
OSSFuzzBugs Benchmark is a collection of open-source real-world fault artifacts for experimenting unit-level fuzzing techniques

Currently, 3 open-source projects are available

gpac
clamav
libjpeg



### Package

-------------

Each Fault-Case package contains followings
A. Buggy version
B. Test input for reproduce
C. Bug info
D. Fix commit
E. Fix info
F. Fix version
G. Single fault program
H. Single fault location



### Usage

-----------------------

1. This benchmark depends on oss-fuzz build scripts(https://github.com/google/oss-fuzz).  Since oss-fuzz uses docker, you need to install docker to build fuzzers.

   https://www.docker.com/
   

2. For building fuzzers, following steps are required

   ```bash
   $ python infra/helper.py pull_images
   $ python infra/helper.py build_image $PROJECT_NAME
   ```

   * https://google.github.io/oss-fuzz/advanced-topics/reproducing/
     

3. Build fuzzers with following options in project directory

   ```bash
   $ ./build.sh \ 
   [-i|--id] $ISSUE_ID [-b|--build] <buggy/fix/single>  
   [-s|--sanitizer] <address/memory/undefined> [-f|--fuzzer] <libfuzzer/afl>
   ```

   

