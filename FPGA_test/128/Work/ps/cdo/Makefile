ifeq ($(XILINX_VITIS_AIETOOLS),)
XILINX_VITIS_AIETOOLS:=${XILINX_VITIS}/aietools
endif
ifeq ($(AIE_SRC_DIR),) 
AIE_SRC_DIR:=. 
endif
.PHONY: all clean
.NOTPARALLEL:
all: clean run

gen_cdo:
	(${XILINX_VITIS_AIETOOLS}/tps/lnx64/gcc/bin/g++ -fPIC -c -std=c++17 -I ${XILINX_VIVADO}/include  -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR -Wno-deprecated-declarations -D__AIESIM__ -D__CDO__ -D__PS_INIT_AIE__ -Og -flto -I ${XILINX_VITIS_AIETOOLS}/include -I ${XILINX_VITIS_AIETOOLS}/include/adf -I ${XILINX_VITIS_AIETOOLS}/tps/lnx64/gcc/include/c++/6.2.0 -I ${XILINX_VITIS_AIETOOLS}/tps/lnx64/gcc/include/c++/6.2.0/backward -I ${XILINX_VITIS_AIETOOLS}/tps/lnx64/gcc/include/c++/6.2.0/x86_64-pc-linux-gnu -I ${XILINX_VITIS_AIETOOLS}/include/common_cpp/common_cpp_v1_0/include -I ${XILINX_VITIS_AIETOOLS}/include/drivers/aiengine -I . -I ${AIE_SRC_DIR} -I ../../..  -I "/usr/xilinx/Vitis/2023.2/aietools/include"  -I "/home/luanxinya/SVD/FPGA_test/128/./aie"  -I "/home/luanxinya/SVD/FPGA_test/128/./" -o "generated-objects/gen_cdo.o" "generated-source/gen_cdo.cpp")

cdo_main:
	(${XILINX_VITIS_AIETOOLS}/tps/lnx64/gcc/bin/g++ -fPIC -c -std=c++17 -I . -I ${XILINX_VITIS_AIETOOLS}/include -o "generated-objects/cdo_main.o" "generated-source/cdo_main.cpp")

link_driver: gen_cdo cdo_main
	(${XILINX_VITIS_AIETOOLS}/tps/lnx64/gcc/bin/g++ -o "generated-objects/cdo_main.out" generated-objects/gen_cdo.o generated-objects/cdo_main.o -Wl,--allow-shlib-undefined -L ${XILINX_VITIS_AIETOOLS}/lib/lnx64.o -lcdo_driver -lxioutils -lxaiengine -ladf_api -Wl,-R${XILINX_VITIS_AIETOOLS}/tps/lnx64/gcc/lib64 )

run: link_driver
	(./generateAIEConfig)

clean:
	(rm -rf generated-objects/*  *.bin)
