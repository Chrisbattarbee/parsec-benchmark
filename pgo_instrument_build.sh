CXX_FLAGS="-O2 -fprofile-instr-generate -Xclang -fprofile-instrument=llvm"
C_FLAGS="-O2 -fprofile-instr-generate -Xclang -fprofile-instrument=llvm"

bin/parsecmgmt -a build -c gcc -p blackscholes canneal ferret fluidanimate freqmine streamcluster swaptions vips x264
