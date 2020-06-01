export CC="/data/llvm-project/llvm/build-release/bin/clang"
bin/parsecmgmt -a clean
bin/parsecmgmt -a uninstall 

for x in blackscholes canneal ferret fluidanimate freqmine streamcluster swaptions vips x264; do 
export LDFLAGS="-fprofile-instr-use=/data/parsec/parsec-benchmark/profiling-results/${x}.profraw.profdata";
export CXXFLAGS="-O2 -fprofile-instr-use=/data/parsec/parsec-benchmark/profiling-results/${x}.profraw.profdata";
export CFLAGS="-O2 -fprofile-instr-use=/data/parsec/parsec-benchmark/profiling-results/${x}.profraw.profdata";
bin/parsecmgmt -a build -c gcc -p $x;
done
