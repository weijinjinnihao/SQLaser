# for ubuntu20.04 only
# SVF-2.5
# LLVM-12
# z3 z3-4.8.8 / 4.12.0

jobs=4

LLVMHome="/home/bigdata/Documents/logicalBug/SVF-2.5/llvm-12.0.0"
Z3Home="/home/bigdata/Documents/logicalBug/SVF-2.5/z3-4.12.0"

SVFHOME="/home/bigdata/Documents/logicalBug/SVF-2.5"
export SVF_DIR=$SVFHOME
export LLVM_DIR=$LLVMHome
export Z3_DIR=$Z3Home
export PATH=$LLVM_DIR/bin:$PATH

echo "LLVM_DIR=$LLVM_DIR"
echo "Z3_DIR=$Z3_DIR"

PTAOBJTY="Debug"
Build=$PTAOBJTY'-build'

PTABIN=$SVF_DIR/$Build/bin
export PATH=$PTABIN:$PATH


echo "LLVM_DIR="$LLVM_DIR
echo "SVF_DIR="$SVF_DIR

mkdir bld
cd bld
cmake .. -DCMAKE_BUILD_TYPE=Debug