export CXXFLAGS="-O2 -fprofile-instr-generate -Xclang -fprofile-instrument=llvm"
export CXXFLAGS="-O2 -fprofile-instr-generate -Xclang -fprofile-instrument=llvm"
export CFLAGS="-O2 -fprofile-instr-generate -Xclang -fprofile-instrument=llvm"
export CFLAGS="-O2 -fprofile-instr-generate -Xclang -fprofile-instrument=llvm"
export CC="/data/llvm-project/llvm/build/bin/clang"
export LDFLAGS='-fprofile-instr-generate -Xclang -fprofile-instrument=llvm'

bin/parsecmgmt -a clean
bin/parsecmgmt -a uninstall 
bin/parsecmgmt -a build -c gcc -p blackscholes canneal ferret fluidanimate freqmine streamcluster swaptions vips x264
