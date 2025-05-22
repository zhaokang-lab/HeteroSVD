SHELL=/bin/bash 
.PHONY: all 0_0 0_1 0_2 0_3 0_4 0_5 0_6 0_7 1_0 1_1 1_2 1_3 1_4 1_5 1_6 2_0 2_1 2_2 2_3 2_4 2_5 2_6 3_0 3_1 3_2 3_3 3_4 3_5 3_6 4_0 4_1 4_2 4_3 4_4 4_5 4_6 5_0 5_1 5_2 5_3 5_4 5_5 5_6 6_0 6_1 6_2 6_3 6_4 6_5 6_6 7_0 7_1 7_2 7_3 7_4 7_5 7_6 8_0 8_1 8_2 8_3 8_4 8_5 8_6 10_1 10_2 10_3 10_4 10_5 10_6 10_7 11_1 11_2 11_3 11_4 11_5 11_6 11_7 12_1 12_2 12_3 12_4 12_5 12_6 12_7 13_1 13_2 13_3 13_4 13_5 13_6 13_7 14_1 14_2 14_3 14_4 14_5 14_6 14_7 15_1 15_2 15_3 15_4 15_5 15_6 15_7 16_1 16_2 16_3 16_4 16_5 16_6 16_7 17_1 17_2 17_3 17_4 17_5 17_6 17_7 19_0 20_0 21_0 22_0 23_0 24_0 25_0 26_0 clean

ifeq ($(XILINX_VITIS_AIETOOLS),)
XILINX_VITIS_AIETOOLS := ${XILINX_VITIS}/aietools
endif

ifeq ($(CARDANO_AIE_ARCH_MODEL_DIR),)
CARDANO_AIE_ARCH_MODEL_DIR := ${XILINX_VITIS_AIETOOLS}/data/versal_prod/lib
endif

ts := $(shell date "+%Y-%m-%d-%H-%M-%S")

XCHESSMK := xchessmk
XCHESSCC := xchesscc
CHESSLLVMLink := ${XILINX_VITIS_AIETOOLS}/tps/${RDI_PLATFORM}/target/bin/LNa64bin/chess-llvm-link
all: 0_0 0_1 0_2 0_3 0_4 0_5 0_6 0_7 1_0 1_1 1_2 1_3 1_4 1_5 1_6 2_0 2_1 2_2 2_3 2_4 2_5 2_6 3_0 3_1 3_2 3_3 3_4 3_5 3_6 4_0 4_1 4_2 4_3 4_4 4_5 4_6 5_0 5_1 5_2 5_3 5_4 5_5 5_6 6_0 6_1 6_2 6_3 6_4 6_5 6_6 7_0 7_1 7_2 7_3 7_4 7_5 7_6 8_0 8_1 8_2 8_3 8_4 8_5 8_6 10_1 10_2 10_3 10_4 10_5 10_6 10_7 11_1 11_2 11_3 11_4 11_5 11_6 11_7 12_1 12_2 12_3 12_4 12_5 12_6 12_7 13_1 13_2 13_3 13_4 13_5 13_6 13_7 14_1 14_2 14_3 14_4 14_5 14_6 14_7 15_1 15_2 15_3 15_4 15_5 15_6 15_7 16_1 16_2 16_3 16_4 16_5 16_6 16_7 17_1 17_2 17_3 17_4 17_5 17_6 17_7 19_0 20_0 21_0 22_0 23_0 24_0 25_0 26_0 

0_0:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 0_0/scripts/0_0.prx) 2>&1 |& tee -a 0_0/0_0.log 0_0/timestamped_log/0_0-${ts}.log
	set -o pipefail; (coreverify -obj 0_0 -s 1024 -pm 16384) 2>&1 |& tee -a 0_0/0_0.log 0_0/timestamped_log/0_0-${ts}.log
	(readelf --debug-dump=decodedline 0_0/Release/0_0 >> 0_0/Release/0_0.txt)
0_1:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 0_1/scripts/0_1.prx) 2>&1 |& tee -a 0_1/0_1.log 0_1/timestamped_log/0_1-${ts}.log
	set -o pipefail; (coreverify -obj 0_1 -s 1024 -pm 16384) 2>&1 |& tee -a 0_1/0_1.log 0_1/timestamped_log/0_1-${ts}.log
	(readelf --debug-dump=decodedline 0_1/Release/0_1 >> 0_1/Release/0_1.txt)
0_3:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 0_3/scripts/0_3.prx) 2>&1 |& tee -a 0_3/0_3.log 0_3/timestamped_log/0_3-${ts}.log
	set -o pipefail; (coreverify -obj 0_3 -s 1024 -pm 16384) 2>&1 |& tee -a 0_3/0_3.log 0_3/timestamped_log/0_3-${ts}.log
	(readelf --debug-dump=decodedline 0_3/Release/0_3 >> 0_3/Release/0_3.txt)
0_5:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 0_5/scripts/0_5.prx) 2>&1 |& tee -a 0_5/0_5.log 0_5/timestamped_log/0_5-${ts}.log
	set -o pipefail; (coreverify -obj 0_5 -s 1024 -pm 16384) 2>&1 |& tee -a 0_5/0_5.log 0_5/timestamped_log/0_5-${ts}.log
	(readelf --debug-dump=decodedline 0_5/Release/0_5 >> 0_5/Release/0_5.txt)
0_7:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 0_7/scripts/0_7.prx) 2>&1 |& tee -a 0_7/0_7.log 0_7/timestamped_log/0_7-${ts}.log
	set -o pipefail; (coreverify -obj 0_7 -s 1024 -pm 16384) 2>&1 |& tee -a 0_7/0_7.log 0_7/timestamped_log/0_7-${ts}.log
	(readelf --debug-dump=decodedline 0_7/Release/0_7 >> 0_7/Release/0_7.txt)
1_0:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 1_0/scripts/1_0.prx) 2>&1 |& tee -a 1_0/1_0.log 1_0/timestamped_log/1_0-${ts}.log
	set -o pipefail; (coreverify -obj 1_0 -s 1024 -pm 16384) 2>&1 |& tee -a 1_0/1_0.log 1_0/timestamped_log/1_0-${ts}.log
	(readelf --debug-dump=decodedline 1_0/Release/1_0 >> 1_0/Release/1_0.txt)
1_1:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 1_1/scripts/1_1.prx) 2>&1 |& tee -a 1_1/1_1.log 1_1/timestamped_log/1_1-${ts}.log
	set -o pipefail; (coreverify -obj 1_1 -s 1024 -pm 16384) 2>&1 |& tee -a 1_1/1_1.log 1_1/timestamped_log/1_1-${ts}.log
	(readelf --debug-dump=decodedline 1_1/Release/1_1 >> 1_1/Release/1_1.txt)
1_2:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 1_2/scripts/1_2.prx) 2>&1 |& tee -a 1_2/1_2.log 1_2/timestamped_log/1_2-${ts}.log
	set -o pipefail; (coreverify -obj 1_2 -s 1024 -pm 16384) 2>&1 |& tee -a 1_2/1_2.log 1_2/timestamped_log/1_2-${ts}.log
	(readelf --debug-dump=decodedline 1_2/Release/1_2 >> 1_2/Release/1_2.txt)
1_3:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 1_3/scripts/1_3.prx) 2>&1 |& tee -a 1_3/1_3.log 1_3/timestamped_log/1_3-${ts}.log
	set -o pipefail; (coreverify -obj 1_3 -s 1024 -pm 16384) 2>&1 |& tee -a 1_3/1_3.log 1_3/timestamped_log/1_3-${ts}.log
	(readelf --debug-dump=decodedline 1_3/Release/1_3 >> 1_3/Release/1_3.txt)
1_4:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 1_4/scripts/1_4.prx) 2>&1 |& tee -a 1_4/1_4.log 1_4/timestamped_log/1_4-${ts}.log
	set -o pipefail; (coreverify -obj 1_4 -s 1024 -pm 16384) 2>&1 |& tee -a 1_4/1_4.log 1_4/timestamped_log/1_4-${ts}.log
	(readelf --debug-dump=decodedline 1_4/Release/1_4 >> 1_4/Release/1_4.txt)
1_5:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 1_5/scripts/1_5.prx) 2>&1 |& tee -a 1_5/1_5.log 1_5/timestamped_log/1_5-${ts}.log
	set -o pipefail; (coreverify -obj 1_5 -s 1024 -pm 16384) 2>&1 |& tee -a 1_5/1_5.log 1_5/timestamped_log/1_5-${ts}.log
	(readelf --debug-dump=decodedline 1_5/Release/1_5 >> 1_5/Release/1_5.txt)
1_6:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 1_6/scripts/1_6.prx) 2>&1 |& tee -a 1_6/1_6.log 1_6/timestamped_log/1_6-${ts}.log
	set -o pipefail; (coreverify -obj 1_6 -s 1024 -pm 16384) 2>&1 |& tee -a 1_6/1_6.log 1_6/timestamped_log/1_6-${ts}.log
	(readelf --debug-dump=decodedline 1_6/Release/1_6 >> 1_6/Release/1_6.txt)
2_0:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 2_0/scripts/2_0.prx) 2>&1 |& tee -a 2_0/2_0.log 2_0/timestamped_log/2_0-${ts}.log
	set -o pipefail; (coreverify -obj 2_0 -s 1024 -pm 16384) 2>&1 |& tee -a 2_0/2_0.log 2_0/timestamped_log/2_0-${ts}.log
	(readelf --debug-dump=decodedline 2_0/Release/2_0 >> 2_0/Release/2_0.txt)
2_2:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 2_2/scripts/2_2.prx) 2>&1 |& tee -a 2_2/2_2.log 2_2/timestamped_log/2_2-${ts}.log
	set -o pipefail; (coreverify -obj 2_2 -s 1024 -pm 16384) 2>&1 |& tee -a 2_2/2_2.log 2_2/timestamped_log/2_2-${ts}.log
	(readelf --debug-dump=decodedline 2_2/Release/2_2 >> 2_2/Release/2_2.txt)
2_5:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 2_5/scripts/2_5.prx) 2>&1 |& tee -a 2_5/2_5.log 2_5/timestamped_log/2_5-${ts}.log
	set -o pipefail; (coreverify -obj 2_5 -s 1024 -pm 16384) 2>&1 |& tee -a 2_5/2_5.log 2_5/timestamped_log/2_5-${ts}.log
	(readelf --debug-dump=decodedline 2_5/Release/2_5 >> 2_5/Release/2_5.txt)
2_6:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 2_6/scripts/2_6.prx) 2>&1 |& tee -a 2_6/2_6.log 2_6/timestamped_log/2_6-${ts}.log
	set -o pipefail; (coreverify -obj 2_6 -s 1024 -pm 16384) 2>&1 |& tee -a 2_6/2_6.log 2_6/timestamped_log/2_6-${ts}.log
	(readelf --debug-dump=decodedline 2_6/Release/2_6 >> 2_6/Release/2_6.txt)
3_1:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 3_1/scripts/3_1.prx) 2>&1 |& tee -a 3_1/3_1.log 3_1/timestamped_log/3_1-${ts}.log
	set -o pipefail; (coreverify -obj 3_1 -s 1024 -pm 16384) 2>&1 |& tee -a 3_1/3_1.log 3_1/timestamped_log/3_1-${ts}.log
	(readelf --debug-dump=decodedline 3_1/Release/3_1 >> 3_1/Release/3_1.txt)
3_2:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 3_2/scripts/3_2.prx) 2>&1 |& tee -a 3_2/3_2.log 3_2/timestamped_log/3_2-${ts}.log
	set -o pipefail; (coreverify -obj 3_2 -s 1024 -pm 16384) 2>&1 |& tee -a 3_2/3_2.log 3_2/timestamped_log/3_2-${ts}.log
	(readelf --debug-dump=decodedline 3_2/Release/3_2 >> 3_2/Release/3_2.txt)
4_0:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 4_0/scripts/4_0.prx) 2>&1 |& tee -a 4_0/4_0.log 4_0/timestamped_log/4_0-${ts}.log
	set -o pipefail; (coreverify -obj 4_0 -s 1024 -pm 16384) 2>&1 |& tee -a 4_0/4_0.log 4_0/timestamped_log/4_0-${ts}.log
	(readelf --debug-dump=decodedline 4_0/Release/4_0 >> 4_0/Release/4_0.txt)
5_5:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 5_5/scripts/5_5.prx) 2>&1 |& tee -a 5_5/5_5.log 5_5/timestamped_log/5_5-${ts}.log
	set -o pipefail; (coreverify -obj 5_5 -s 1024 -pm 16384) 2>&1 |& tee -a 5_5/5_5.log 5_5/timestamped_log/5_5-${ts}.log
	(readelf --debug-dump=decodedline 5_5/Release/5_5 >> 5_5/Release/5_5.txt)
6_0:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 6_0/scripts/6_0.prx) 2>&1 |& tee -a 6_0/6_0.log 6_0/timestamped_log/6_0-${ts}.log
	set -o pipefail; (coreverify -obj 6_0 -s 1024 -pm 16384) 2>&1 |& tee -a 6_0/6_0.log 6_0/timestamped_log/6_0-${ts}.log
	(readelf --debug-dump=decodedline 6_0/Release/6_0 >> 6_0/Release/6_0.txt)
7_0:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 7_0/scripts/7_0.prx) 2>&1 |& tee -a 7_0/7_0.log 7_0/timestamped_log/7_0-${ts}.log
	set -o pipefail; (coreverify -obj 7_0 -s 1024 -pm 16384) 2>&1 |& tee -a 7_0/7_0.log 7_0/timestamped_log/7_0-${ts}.log
	(readelf --debug-dump=decodedline 7_0/Release/7_0 >> 7_0/Release/7_0.txt)
7_5:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 7_5/scripts/7_5.prx) 2>&1 |& tee -a 7_5/7_5.log 7_5/timestamped_log/7_5-${ts}.log
	set -o pipefail; (coreverify -obj 7_5 -s 1024 -pm 16384) 2>&1 |& tee -a 7_5/7_5.log 7_5/timestamped_log/7_5-${ts}.log
	(readelf --debug-dump=decodedline 7_5/Release/7_5 >> 7_5/Release/7_5.txt)
8_1:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 8_1/scripts/8_1.prx) 2>&1 |& tee -a 8_1/8_1.log 8_1/timestamped_log/8_1-${ts}.log
	set -o pipefail; (coreverify -obj 8_1 -s 1024 -pm 16384) 2>&1 |& tee -a 8_1/8_1.log 8_1/timestamped_log/8_1-${ts}.log
	(readelf --debug-dump=decodedline 8_1/Release/8_1 >> 8_1/Release/8_1.txt)
8_5:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 8_5/scripts/8_5.prx) 2>&1 |& tee -a 8_5/8_5.log 8_5/timestamped_log/8_5-${ts}.log
	set -o pipefail; (coreverify -obj 8_5 -s 1024 -pm 16384) 2>&1 |& tee -a 8_5/8_5.log 8_5/timestamped_log/8_5-${ts}.log
	(readelf --debug-dump=decodedline 8_5/Release/8_5 >> 8_5/Release/8_5.txt)
10_1:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 10_1/scripts/10_1.prx) 2>&1 |& tee -a 10_1/10_1.log 10_1/timestamped_log/10_1-${ts}.log
	set -o pipefail; (coreverify -obj 10_1 -s 1024 -pm 16384) 2>&1 |& tee -a 10_1/10_1.log 10_1/timestamped_log/10_1-${ts}.log
	(readelf --debug-dump=decodedline 10_1/Release/10_1 >> 10_1/Release/10_1.txt)
10_2:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 10_2/scripts/10_2.prx) 2>&1 |& tee -a 10_2/10_2.log 10_2/timestamped_log/10_2-${ts}.log
	set -o pipefail; (coreverify -obj 10_2 -s 1024 -pm 16384) 2>&1 |& tee -a 10_2/10_2.log 10_2/timestamped_log/10_2-${ts}.log
	(readelf --debug-dump=decodedline 10_2/Release/10_2 >> 10_2/Release/10_2.txt)
10_3:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 10_3/scripts/10_3.prx) 2>&1 |& tee -a 10_3/10_3.log 10_3/timestamped_log/10_3-${ts}.log
	set -o pipefail; (coreverify -obj 10_3 -s 1024 -pm 16384) 2>&1 |& tee -a 10_3/10_3.log 10_3/timestamped_log/10_3-${ts}.log
	(readelf --debug-dump=decodedline 10_3/Release/10_3 >> 10_3/Release/10_3.txt)
10_7:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 10_7/scripts/10_7.prx) 2>&1 |& tee -a 10_7/10_7.log 10_7/timestamped_log/10_7-${ts}.log
	set -o pipefail; (coreverify -obj 10_7 -s 1024 -pm 16384) 2>&1 |& tee -a 10_7/10_7.log 10_7/timestamped_log/10_7-${ts}.log
	(readelf --debug-dump=decodedline 10_7/Release/10_7 >> 10_7/Release/10_7.txt)
11_1:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 11_1/scripts/11_1.prx) 2>&1 |& tee -a 11_1/11_1.log 11_1/timestamped_log/11_1-${ts}.log
	set -o pipefail; (coreverify -obj 11_1 -s 1024 -pm 16384) 2>&1 |& tee -a 11_1/11_1.log 11_1/timestamped_log/11_1-${ts}.log
	(readelf --debug-dump=decodedline 11_1/Release/11_1 >> 11_1/Release/11_1.txt)
11_2:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 11_2/scripts/11_2.prx) 2>&1 |& tee -a 11_2/11_2.log 11_2/timestamped_log/11_2-${ts}.log
	set -o pipefail; (coreverify -obj 11_2 -s 1024 -pm 16384) 2>&1 |& tee -a 11_2/11_2.log 11_2/timestamped_log/11_2-${ts}.log
	(readelf --debug-dump=decodedline 11_2/Release/11_2 >> 11_2/Release/11_2.txt)
11_7:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 11_7/scripts/11_7.prx) 2>&1 |& tee -a 11_7/11_7.log 11_7/timestamped_log/11_7-${ts}.log
	set -o pipefail; (coreverify -obj 11_7 -s 1024 -pm 16384) 2>&1 |& tee -a 11_7/11_7.log 11_7/timestamped_log/11_7-${ts}.log
	(readelf --debug-dump=decodedline 11_7/Release/11_7 >> 11_7/Release/11_7.txt)
12_7:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 12_7/scripts/12_7.prx) 2>&1 |& tee -a 12_7/12_7.log 12_7/timestamped_log/12_7-${ts}.log
	set -o pipefail; (coreverify -obj 12_7 -s 1024 -pm 16384) 2>&1 |& tee -a 12_7/12_7.log 12_7/timestamped_log/12_7-${ts}.log
	(readelf --debug-dump=decodedline 12_7/Release/12_7 >> 12_7/Release/12_7.txt)
13_1:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 13_1/scripts/13_1.prx) 2>&1 |& tee -a 13_1/13_1.log 13_1/timestamped_log/13_1-${ts}.log
	set -o pipefail; (coreverify -obj 13_1 -s 1024 -pm 16384) 2>&1 |& tee -a 13_1/13_1.log 13_1/timestamped_log/13_1-${ts}.log
	(readelf --debug-dump=decodedline 13_1/Release/13_1 >> 13_1/Release/13_1.txt)
16_3:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 16_3/scripts/16_3.prx) 2>&1 |& tee -a 16_3/16_3.log 16_3/timestamped_log/16_3-${ts}.log
	set -o pipefail; (coreverify -obj 16_3 -s 1024 -pm 16384) 2>&1 |& tee -a 16_3/16_3.log 16_3/timestamped_log/16_3-${ts}.log
	(readelf --debug-dump=decodedline 16_3/Release/16_3 >> 16_3/Release/16_3.txt)
17_1:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 17_1/scripts/17_1.prx) 2>&1 |& tee -a 17_1/17_1.log 17_1/timestamped_log/17_1-${ts}.log
	set -o pipefail; (coreverify -obj 17_1 -s 1024 -pm 16384) 2>&1 |& tee -a 17_1/17_1.log 17_1/timestamped_log/17_1-${ts}.log
	(readelf --debug-dump=decodedline 17_1/Release/17_1 >> 17_1/Release/17_1.txt)
17_7:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 17_7/scripts/17_7.prx) 2>&1 |& tee -a 17_7/17_7.log 17_7/timestamped_log/17_7-${ts}.log
	set -o pipefail; (coreverify -obj 17_7 -s 1024 -pm 16384) 2>&1 |& tee -a 17_7/17_7.log 17_7/timestamped_log/17_7-${ts}.log
	(readelf --debug-dump=decodedline 17_7/Release/17_7 >> 17_7/Release/17_7.txt)
19_0:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 19_0/scripts/19_0.prx) 2>&1 |& tee -a 19_0/19_0.log 19_0/timestamped_log/19_0-${ts}.log
	set -o pipefail; (coreverify -obj 19_0 -s 1024 -pm 16384) 2>&1 |& tee -a 19_0/19_0.log 19_0/timestamped_log/19_0-${ts}.log
	(readelf --debug-dump=decodedline 19_0/Release/19_0 >> 19_0/Release/19_0.txt)
20_0:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 20_0/scripts/20_0.prx) 2>&1 |& tee -a 20_0/20_0.log 20_0/timestamped_log/20_0-${ts}.log
	set -o pipefail; (coreverify -obj 20_0 -s 1024 -pm 16384) 2>&1 |& tee -a 20_0/20_0.log 20_0/timestamped_log/20_0-${ts}.log
	(readelf --debug-dump=decodedline 20_0/Release/20_0 >> 20_0/Release/20_0.txt)
21_0:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 21_0/scripts/21_0.prx) 2>&1 |& tee -a 21_0/21_0.log 21_0/timestamped_log/21_0-${ts}.log
	set -o pipefail; (coreverify -obj 21_0 -s 1024 -pm 16384) 2>&1 |& tee -a 21_0/21_0.log 21_0/timestamped_log/21_0-${ts}.log
	(readelf --debug-dump=decodedline 21_0/Release/21_0 >> 21_0/Release/21_0.txt)
22_0:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 22_0/scripts/22_0.prx) 2>&1 |& tee -a 22_0/22_0.log 22_0/timestamped_log/22_0-${ts}.log
	set -o pipefail; (coreverify -obj 22_0 -s 1024 -pm 16384) 2>&1 |& tee -a 22_0/22_0.log 22_0/timestamped_log/22_0-${ts}.log
	(readelf --debug-dump=decodedline 22_0/Release/22_0 >> 22_0/Release/22_0.txt)
23_0:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 23_0/scripts/23_0.prx) 2>&1 |& tee -a 23_0/23_0.log 23_0/timestamped_log/23_0-${ts}.log
	set -o pipefail; (coreverify -obj 23_0 -s 1024 -pm 16384) 2>&1 |& tee -a 23_0/23_0.log 23_0/timestamped_log/23_0-${ts}.log
	(readelf --debug-dump=decodedline 23_0/Release/23_0 >> 23_0/Release/23_0.txt)
26_0:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 26_0/scripts/26_0.prx) 2>&1 |& tee -a 26_0/26_0.log 26_0/timestamped_log/26_0-${ts}.log
	set -o pipefail; (coreverify -obj 26_0 -s 1024 -pm 16384) 2>&1 |& tee -a 26_0/26_0.log 26_0/timestamped_log/26_0-${ts}.log
	(readelf --debug-dump=decodedline 26_0/Release/26_0 >> 26_0/Release/26_0.txt)

0_2: 0_0
	mkdir -p 0_2/Release
	cp 0_0/Release/0_0.o 0_2/Release/0_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 0_2/scripts/0_2.prx +W bridge,../Release/0_2.o) 2>&1 |& tee -a 0_2/0_2.log 0_2/timestamped_log/0_2-${ts}.log
	set -o pipefail; (coreverify -obj 0_2 -s 1024 -pm 16384) 2>&1 |& tee -a 0_2/0_2.log 0_2/timestamped_log/0_2-${ts}.log

0_4: 0_0
	mkdir -p 0_4/Release
	cp 0_0/Release/0_0.o 0_4/Release/0_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 0_4/scripts/0_4.prx +W bridge,../Release/0_4.o) 2>&1 |& tee -a 0_4/0_4.log 0_4/timestamped_log/0_4-${ts}.log
	set -o pipefail; (coreverify -obj 0_4 -s 1024 -pm 16384) 2>&1 |& tee -a 0_4/0_4.log 0_4/timestamped_log/0_4-${ts}.log

0_6: 0_0
	mkdir -p 0_6/Release
	cp 0_0/Release/0_0.o 0_6/Release/0_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 0_6/scripts/0_6.prx +W bridge,../Release/0_6.o) 2>&1 |& tee -a 0_6/0_6.log 0_6/timestamped_log/0_6-${ts}.log
	set -o pipefail; (coreverify -obj 0_6 -s 1024 -pm 16384) 2>&1 |& tee -a 0_6/0_6.log 0_6/timestamped_log/0_6-${ts}.log

2_1: 1_1
	mkdir -p 2_1/Release
	cp 1_1/Release/1_1.o 2_1/Release/2_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 2_1/scripts/2_1.prx +W bridge,../Release/2_1.o) 2>&1 |& tee -a 2_1/2_1.log 2_1/timestamped_log/2_1-${ts}.log
	set -o pipefail; (coreverify -obj 2_1 -s 1024 -pm 16384) 2>&1 |& tee -a 2_1/2_1.log 2_1/timestamped_log/2_1-${ts}.log

2_3: 1_3
	mkdir -p 2_3/Release
	cp 1_3/Release/1_3.o 2_3/Release/2_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 2_3/scripts/2_3.prx +W bridge,../Release/2_3.o) 2>&1 |& tee -a 2_3/2_3.log 2_3/timestamped_log/2_3-${ts}.log
	set -o pipefail; (coreverify -obj 2_3 -s 1024 -pm 16384) 2>&1 |& tee -a 2_3/2_3.log 2_3/timestamped_log/2_3-${ts}.log

2_4: 1_3
	mkdir -p 2_4/Release
	cp 1_3/Release/1_3.o 2_4/Release/2_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 2_4/scripts/2_4.prx +W bridge,../Release/2_4.o) 2>&1 |& tee -a 2_4/2_4.log 2_4/timestamped_log/2_4-${ts}.log
	set -o pipefail; (coreverify -obj 2_4 -s 1024 -pm 16384) 2>&1 |& tee -a 2_4/2_4.log 2_4/timestamped_log/2_4-${ts}.log

3_3: 1_3
	mkdir -p 3_3/Release
	cp 1_3/Release/1_3.o 3_3/Release/3_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 3_3/scripts/3_3.prx +W bridge,../Release/3_3.o) 2>&1 |& tee -a 3_3/3_3.log 3_3/timestamped_log/3_3-${ts}.log
	set -o pipefail; (coreverify -obj 3_3 -s 1024 -pm 16384) 2>&1 |& tee -a 3_3/3_3.log 3_3/timestamped_log/3_3-${ts}.log

3_4: 1_3
	mkdir -p 3_4/Release
	cp 1_3/Release/1_3.o 3_4/Release/3_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 3_4/scripts/3_4.prx +W bridge,../Release/3_4.o) 2>&1 |& tee -a 3_4/3_4.log 3_4/timestamped_log/3_4-${ts}.log
	set -o pipefail; (coreverify -obj 3_4 -s 1024 -pm 16384) 2>&1 |& tee -a 3_4/3_4.log 3_4/timestamped_log/3_4-${ts}.log

4_2: 1_3
	mkdir -p 4_2/Release
	cp 1_3/Release/1_3.o 4_2/Release/4_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 4_2/scripts/4_2.prx +W bridge,../Release/4_2.o) 2>&1 |& tee -a 4_2/4_2.log 4_2/timestamped_log/4_2-${ts}.log
	set -o pipefail; (coreverify -obj 4_2 -s 1024 -pm 16384) 2>&1 |& tee -a 4_2/4_2.log 4_2/timestamped_log/4_2-${ts}.log

4_3: 1_3
	mkdir -p 4_3/Release
	cp 1_3/Release/1_3.o 4_3/Release/4_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 4_3/scripts/4_3.prx +W bridge,../Release/4_3.o) 2>&1 |& tee -a 4_3/4_3.log 4_3/timestamped_log/4_3-${ts}.log
	set -o pipefail; (coreverify -obj 4_3 -s 1024 -pm 16384) 2>&1 |& tee -a 4_3/4_3.log 4_3/timestamped_log/4_3-${ts}.log

4_4: 1_3
	mkdir -p 4_4/Release
	cp 1_3/Release/1_3.o 4_4/Release/4_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 4_4/scripts/4_4.prx +W bridge,../Release/4_4.o) 2>&1 |& tee -a 4_4/4_4.log 4_4/timestamped_log/4_4-${ts}.log
	set -o pipefail; (coreverify -obj 4_4 -s 1024 -pm 16384) 2>&1 |& tee -a 4_4/4_4.log 4_4/timestamped_log/4_4-${ts}.log

5_2: 1_3
	mkdir -p 5_2/Release
	cp 1_3/Release/1_3.o 5_2/Release/5_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 5_2/scripts/5_2.prx +W bridge,../Release/5_2.o) 2>&1 |& tee -a 5_2/5_2.log 5_2/timestamped_log/5_2-${ts}.log
	set -o pipefail; (coreverify -obj 5_2 -s 1024 -pm 16384) 2>&1 |& tee -a 5_2/5_2.log 5_2/timestamped_log/5_2-${ts}.log

5_3: 1_3
	mkdir -p 5_3/Release
	cp 1_3/Release/1_3.o 5_3/Release/5_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 5_3/scripts/5_3.prx +W bridge,../Release/5_3.o) 2>&1 |& tee -a 5_3/5_3.log 5_3/timestamped_log/5_3-${ts}.log
	set -o pipefail; (coreverify -obj 5_3 -s 1024 -pm 16384) 2>&1 |& tee -a 5_3/5_3.log 5_3/timestamped_log/5_3-${ts}.log

5_4: 1_3
	mkdir -p 5_4/Release
	cp 1_3/Release/1_3.o 5_4/Release/5_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 5_4/scripts/5_4.prx +W bridge,../Release/5_4.o) 2>&1 |& tee -a 5_4/5_4.log 5_4/timestamped_log/5_4-${ts}.log
	set -o pipefail; (coreverify -obj 5_4 -s 1024 -pm 16384) 2>&1 |& tee -a 5_4/5_4.log 5_4/timestamped_log/5_4-${ts}.log

6_2: 1_3
	mkdir -p 6_2/Release
	cp 1_3/Release/1_3.o 6_2/Release/6_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 6_2/scripts/6_2.prx +W bridge,../Release/6_2.o) 2>&1 |& tee -a 6_2/6_2.log 6_2/timestamped_log/6_2-${ts}.log
	set -o pipefail; (coreverify -obj 6_2 -s 1024 -pm 16384) 2>&1 |& tee -a 6_2/6_2.log 6_2/timestamped_log/6_2-${ts}.log

6_3: 1_3
	mkdir -p 6_3/Release
	cp 1_3/Release/1_3.o 6_3/Release/6_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 6_3/scripts/6_3.prx +W bridge,../Release/6_3.o) 2>&1 |& tee -a 6_3/6_3.log 6_3/timestamped_log/6_3-${ts}.log
	set -o pipefail; (coreverify -obj 6_3 -s 1024 -pm 16384) 2>&1 |& tee -a 6_3/6_3.log 6_3/timestamped_log/6_3-${ts}.log

6_4: 1_3
	mkdir -p 6_4/Release
	cp 1_3/Release/1_3.o 6_4/Release/6_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 6_4/scripts/6_4.prx +W bridge,../Release/6_4.o) 2>&1 |& tee -a 6_4/6_4.log 6_4/timestamped_log/6_4-${ts}.log
	set -o pipefail; (coreverify -obj 6_4 -s 1024 -pm 16384) 2>&1 |& tee -a 6_4/6_4.log 6_4/timestamped_log/6_4-${ts}.log

6_6: 1_3
	mkdir -p 6_6/Release
	cp 1_3/Release/1_3.o 6_6/Release/6_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 6_6/scripts/6_6.prx +W bridge,../Release/6_6.o) 2>&1 |& tee -a 6_6/6_6.log 6_6/timestamped_log/6_6-${ts}.log
	set -o pipefail; (coreverify -obj 6_6 -s 1024 -pm 16384) 2>&1 |& tee -a 6_6/6_6.log 6_6/timestamped_log/6_6-${ts}.log

7_2: 1_3
	mkdir -p 7_2/Release
	cp 1_3/Release/1_3.o 7_2/Release/7_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 7_2/scripts/7_2.prx +W bridge,../Release/7_2.o) 2>&1 |& tee -a 7_2/7_2.log 7_2/timestamped_log/7_2-${ts}.log
	set -o pipefail; (coreverify -obj 7_2 -s 1024 -pm 16384) 2>&1 |& tee -a 7_2/7_2.log 7_2/timestamped_log/7_2-${ts}.log

7_4: 1_3
	mkdir -p 7_4/Release
	cp 1_3/Release/1_3.o 7_4/Release/7_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 7_4/scripts/7_4.prx +W bridge,../Release/7_4.o) 2>&1 |& tee -a 7_4/7_4.log 7_4/timestamped_log/7_4-${ts}.log
	set -o pipefail; (coreverify -obj 7_4 -s 1024 -pm 16384) 2>&1 |& tee -a 7_4/7_4.log 7_4/timestamped_log/7_4-${ts}.log

7_6: 1_3
	mkdir -p 7_6/Release
	cp 1_3/Release/1_3.o 7_6/Release/7_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 7_6/scripts/7_6.prx +W bridge,../Release/7_6.o) 2>&1 |& tee -a 7_6/7_6.log 7_6/timestamped_log/7_6-${ts}.log
	set -o pipefail; (coreverify -obj 7_6 -s 1024 -pm 16384) 2>&1 |& tee -a 7_6/7_6.log 7_6/timestamped_log/7_6-${ts}.log

3_0: 2_0
	mkdir -p 3_0/Release
	cp 2_0/Release/2_0.o 3_0/Release/3_0.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 3_0/scripts/3_0.prx +W bridge,../Release/3_0.o) 2>&1 |& tee -a 3_0/3_0.log 3_0/timestamped_log/3_0-${ts}.log
	set -o pipefail; (coreverify -obj 3_0 -s 1024 -pm 16384) 2>&1 |& tee -a 3_0/3_0.log 3_0/timestamped_log/3_0-${ts}.log

4_1: 2_2
	mkdir -p 4_1/Release
	cp 2_2/Release/2_2.o 4_1/Release/4_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 4_1/scripts/4_1.prx +W bridge,../Release/4_1.o) 2>&1 |& tee -a 4_1/4_1.log 4_1/timestamped_log/4_1-${ts}.log
	set -o pipefail; (coreverify -obj 4_1 -s 1024 -pm 16384) 2>&1 |& tee -a 4_1/4_1.log 4_1/timestamped_log/4_1-${ts}.log

5_1: 2_2
	mkdir -p 5_1/Release
	cp 2_2/Release/2_2.o 5_1/Release/5_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 5_1/scripts/5_1.prx +W bridge,../Release/5_1.o) 2>&1 |& tee -a 5_1/5_1.log 5_1/timestamped_log/5_1-${ts}.log
	set -o pipefail; (coreverify -obj 5_1 -s 1024 -pm 16384) 2>&1 |& tee -a 5_1/5_1.log 5_1/timestamped_log/5_1-${ts}.log

6_1: 2_2
	mkdir -p 6_1/Release
	cp 2_2/Release/2_2.o 6_1/Release/6_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 6_1/scripts/6_1.prx +W bridge,../Release/6_1.o) 2>&1 |& tee -a 6_1/6_1.log 6_1/timestamped_log/6_1-${ts}.log
	set -o pipefail; (coreverify -obj 6_1 -s 1024 -pm 16384) 2>&1 |& tee -a 6_1/6_1.log 6_1/timestamped_log/6_1-${ts}.log

7_1: 2_2
	mkdir -p 7_1/Release
	cp 2_2/Release/2_2.o 7_1/Release/7_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 7_1/scripts/7_1.prx +W bridge,../Release/7_1.o) 2>&1 |& tee -a 7_1/7_1.log 7_1/timestamped_log/7_1-${ts}.log
	set -o pipefail; (coreverify -obj 7_1 -s 1024 -pm 16384) 2>&1 |& tee -a 7_1/7_1.log 7_1/timestamped_log/7_1-${ts}.log

8_0: 2_2
	mkdir -p 8_0/Release
	cp 2_2/Release/2_2.o 8_0/Release/8_0.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 8_0/scripts/8_0.prx +W bridge,../Release/8_0.o) 2>&1 |& tee -a 8_0/8_0.log 8_0/timestamped_log/8_0-${ts}.log
	set -o pipefail; (coreverify -obj 8_0 -s 1024 -pm 16384) 2>&1 |& tee -a 8_0/8_0.log 8_0/timestamped_log/8_0-${ts}.log

3_5: 2_5
	mkdir -p 3_5/Release
	cp 2_5/Release/2_5.o 3_5/Release/3_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 3_5/scripts/3_5.prx +W bridge,../Release/3_5.o) 2>&1 |& tee -a 3_5/3_5.log 3_5/timestamped_log/3_5-${ts}.log
	set -o pipefail; (coreverify -obj 3_5 -s 1024 -pm 16384) 2>&1 |& tee -a 3_5/3_5.log 3_5/timestamped_log/3_5-${ts}.log

4_5: 2_5
	mkdir -p 4_5/Release
	cp 2_5/Release/2_5.o 4_5/Release/4_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 4_5/scripts/4_5.prx +W bridge,../Release/4_5.o) 2>&1 |& tee -a 4_5/4_5.log 4_5/timestamped_log/4_5-${ts}.log
	set -o pipefail; (coreverify -obj 4_5 -s 1024 -pm 16384) 2>&1 |& tee -a 4_5/4_5.log 4_5/timestamped_log/4_5-${ts}.log

3_6: 2_6
	mkdir -p 3_6/Release
	cp 2_6/Release/2_6.o 3_6/Release/3_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 3_6/scripts/3_6.prx +W bridge,../Release/3_6.o) 2>&1 |& tee -a 3_6/3_6.log 3_6/timestamped_log/3_6-${ts}.log
	set -o pipefail; (coreverify -obj 3_6 -s 1024 -pm 16384) 2>&1 |& tee -a 3_6/3_6.log 3_6/timestamped_log/3_6-${ts}.log

4_6: 2_6
	mkdir -p 4_6/Release
	cp 2_6/Release/2_6.o 4_6/Release/4_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 4_6/scripts/4_6.prx +W bridge,../Release/4_6.o) 2>&1 |& tee -a 4_6/4_6.log 4_6/timestamped_log/4_6-${ts}.log
	set -o pipefail; (coreverify -obj 4_6 -s 1024 -pm 16384) 2>&1 |& tee -a 4_6/4_6.log 4_6/timestamped_log/4_6-${ts}.log

5_6: 2_6
	mkdir -p 5_6/Release
	cp 2_6/Release/2_6.o 5_6/Release/5_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 5_6/scripts/5_6.prx +W bridge,../Release/5_6.o) 2>&1 |& tee -a 5_6/5_6.log 5_6/timestamped_log/5_6-${ts}.log
	set -o pipefail; (coreverify -obj 5_6 -s 1024 -pm 16384) 2>&1 |& tee -a 5_6/5_6.log 5_6/timestamped_log/5_6-${ts}.log

7_3: 3_1
	mkdir -p 7_3/Release
	cp 3_1/Release/3_1.o 7_3/Release/7_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 7_3/scripts/7_3.prx +W bridge,../Release/7_3.o) 2>&1 |& tee -a 7_3/7_3.log 7_3/timestamped_log/7_3-${ts}.log
	set -o pipefail; (coreverify -obj 7_3 -s 1024 -pm 16384) 2>&1 |& tee -a 7_3/7_3.log 7_3/timestamped_log/7_3-${ts}.log

8_2: 3_1
	mkdir -p 8_2/Release
	cp 3_1/Release/3_1.o 8_2/Release/8_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 8_2/scripts/8_2.prx +W bridge,../Release/8_2.o) 2>&1 |& tee -a 8_2/8_2.log 8_2/timestamped_log/8_2-${ts}.log
	set -o pipefail; (coreverify -obj 8_2 -s 1024 -pm 16384) 2>&1 |& tee -a 8_2/8_2.log 8_2/timestamped_log/8_2-${ts}.log

8_4: 3_1
	mkdir -p 8_4/Release
	cp 3_1/Release/3_1.o 8_4/Release/8_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 8_4/scripts/8_4.prx +W bridge,../Release/8_4.o) 2>&1 |& tee -a 8_4/8_4.log 8_4/timestamped_log/8_4-${ts}.log
	set -o pipefail; (coreverify -obj 8_4 -s 1024 -pm 16384) 2>&1 |& tee -a 8_4/8_4.log 8_4/timestamped_log/8_4-${ts}.log

8_6: 3_1
	mkdir -p 8_6/Release
	cp 3_1/Release/3_1.o 8_6/Release/8_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 8_6/scripts/8_6.prx +W bridge,../Release/8_6.o) 2>&1 |& tee -a 8_6/8_6.log 8_6/timestamped_log/8_6-${ts}.log
	set -o pipefail; (coreverify -obj 8_6 -s 1024 -pm 16384) 2>&1 |& tee -a 8_6/8_6.log 8_6/timestamped_log/8_6-${ts}.log

5_0: 4_0
	mkdir -p 5_0/Release
	cp 4_0/Release/4_0.o 5_0/Release/5_0.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 5_0/scripts/5_0.prx +W bridge,../Release/5_0.o) 2>&1 |& tee -a 5_0/5_0.log 5_0/timestamped_log/5_0-${ts}.log
	set -o pipefail; (coreverify -obj 5_0 -s 1024 -pm 16384) 2>&1 |& tee -a 5_0/5_0.log 5_0/timestamped_log/5_0-${ts}.log

6_5: 5_5
	mkdir -p 6_5/Release
	cp 5_5/Release/5_5.o 6_5/Release/6_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 6_5/scripts/6_5.prx +W bridge,../Release/6_5.o) 2>&1 |& tee -a 6_5/6_5.log 6_5/timestamped_log/6_5-${ts}.log
	set -o pipefail; (coreverify -obj 6_5 -s 1024 -pm 16384) 2>&1 |& tee -a 6_5/6_5.log 6_5/timestamped_log/6_5-${ts}.log

8_3: 8_1
	mkdir -p 8_3/Release
	cp 8_1/Release/8_1.o 8_3/Release/8_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 8_3/scripts/8_3.prx +W bridge,../Release/8_3.o) 2>&1 |& tee -a 8_3/8_3.log 8_3/timestamped_log/8_3-${ts}.log
	set -o pipefail; (coreverify -obj 8_3 -s 1024 -pm 16384) 2>&1 |& tee -a 8_3/8_3.log 8_3/timestamped_log/8_3-${ts}.log

14_2: 10_1
	mkdir -p 14_2/Release
	cp 10_1/Release/10_1.o 14_2/Release/14_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 14_2/scripts/14_2.prx +W bridge,../Release/14_2.o) 2>&1 |& tee -a 14_2/14_2.log 14_2/timestamped_log/14_2-${ts}.log
	set -o pipefail; (coreverify -obj 14_2 -s 1024 -pm 16384) 2>&1 |& tee -a 14_2/14_2.log 14_2/timestamped_log/14_2-${ts}.log

16_1: 10_1
	mkdir -p 16_1/Release
	cp 10_1/Release/10_1.o 16_1/Release/16_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 16_1/scripts/16_1.prx +W bridge,../Release/16_1.o) 2>&1 |& tee -a 16_1/16_1.log 16_1/timestamped_log/16_1-${ts}.log
	set -o pipefail; (coreverify -obj 16_1 -s 1024 -pm 16384) 2>&1 |& tee -a 16_1/16_1.log 16_1/timestamped_log/16_1-${ts}.log

16_5: 10_1
	mkdir -p 16_5/Release
	cp 10_1/Release/10_1.o 16_5/Release/16_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 16_5/scripts/16_5.prx +W bridge,../Release/16_5.o) 2>&1 |& tee -a 16_5/16_5.log 16_5/timestamped_log/16_5-${ts}.log
	set -o pipefail; (coreverify -obj 16_5 -s 1024 -pm 16384) 2>&1 |& tee -a 16_5/16_5.log 16_5/timestamped_log/16_5-${ts}.log

17_4: 10_1
	mkdir -p 17_4/Release
	cp 10_1/Release/10_1.o 17_4/Release/17_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 17_4/scripts/17_4.prx +W bridge,../Release/17_4.o) 2>&1 |& tee -a 17_4/17_4.log 17_4/timestamped_log/17_4-${ts}.log
	set -o pipefail; (coreverify -obj 17_4 -s 1024 -pm 16384) 2>&1 |& tee -a 17_4/17_4.log 17_4/timestamped_log/17_4-${ts}.log

17_6: 10_1
	mkdir -p 17_6/Release
	cp 10_1/Release/10_1.o 17_6/Release/17_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 17_6/scripts/17_6.prx +W bridge,../Release/17_6.o) 2>&1 |& tee -a 17_6/17_6.log 17_6/timestamped_log/17_6-${ts}.log
	set -o pipefail; (coreverify -obj 17_6 -s 1024 -pm 16384) 2>&1 |& tee -a 17_6/17_6.log 17_6/timestamped_log/17_6-${ts}.log

10_4: 10_2
	mkdir -p 10_4/Release
	cp 10_2/Release/10_2.o 10_4/Release/10_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 10_4/scripts/10_4.prx +W bridge,../Release/10_4.o) 2>&1 |& tee -a 10_4/10_4.log 10_4/timestamped_log/10_4-${ts}.log
	set -o pipefail; (coreverify -obj 10_4 -s 1024 -pm 16384) 2>&1 |& tee -a 10_4/10_4.log 10_4/timestamped_log/10_4-${ts}.log

10_6: 10_2
	mkdir -p 10_6/Release
	cp 10_2/Release/10_2.o 10_6/Release/10_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 10_6/scripts/10_6.prx +W bridge,../Release/10_6.o) 2>&1 |& tee -a 10_6/10_6.log 10_6/timestamped_log/10_6-${ts}.log
	set -o pipefail; (coreverify -obj 10_6 -s 1024 -pm 16384) 2>&1 |& tee -a 10_6/10_6.log 10_6/timestamped_log/10_6-${ts}.log

10_5: 10_3
	mkdir -p 10_5/Release
	cp 10_3/Release/10_3.o 10_5/Release/10_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 10_5/scripts/10_5.prx +W bridge,../Release/10_5.o) 2>&1 |& tee -a 10_5/10_5.log 10_5/timestamped_log/10_5-${ts}.log
	set -o pipefail; (coreverify -obj 10_5 -s 1024 -pm 16384) 2>&1 |& tee -a 10_5/10_5.log 10_5/timestamped_log/10_5-${ts}.log

11_3: 10_3
	mkdir -p 11_3/Release
	cp 10_3/Release/10_3.o 11_3/Release/11_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 11_3/scripts/11_3.prx +W bridge,../Release/11_3.o) 2>&1 |& tee -a 11_3/11_3.log 11_3/timestamped_log/11_3-${ts}.log
	set -o pipefail; (coreverify -obj 11_3 -s 1024 -pm 16384) 2>&1 |& tee -a 11_3/11_3.log 11_3/timestamped_log/11_3-${ts}.log

11_4: 10_3
	mkdir -p 11_4/Release
	cp 10_3/Release/10_3.o 11_4/Release/11_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 11_4/scripts/11_4.prx +W bridge,../Release/11_4.o) 2>&1 |& tee -a 11_4/11_4.log 11_4/timestamped_log/11_4-${ts}.log
	set -o pipefail; (coreverify -obj 11_4 -s 1024 -pm 16384) 2>&1 |& tee -a 11_4/11_4.log 11_4/timestamped_log/11_4-${ts}.log

11_5: 10_3
	mkdir -p 11_5/Release
	cp 10_3/Release/10_3.o 11_5/Release/11_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 11_5/scripts/11_5.prx +W bridge,../Release/11_5.o) 2>&1 |& tee -a 11_5/11_5.log 11_5/timestamped_log/11_5-${ts}.log
	set -o pipefail; (coreverify -obj 11_5 -s 1024 -pm 16384) 2>&1 |& tee -a 11_5/11_5.log 11_5/timestamped_log/11_5-${ts}.log

11_6: 10_3
	mkdir -p 11_6/Release
	cp 10_3/Release/10_3.o 11_6/Release/11_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 11_6/scripts/11_6.prx +W bridge,../Release/11_6.o) 2>&1 |& tee -a 11_6/11_6.log 11_6/timestamped_log/11_6-${ts}.log
	set -o pipefail; (coreverify -obj 11_6 -s 1024 -pm 16384) 2>&1 |& tee -a 11_6/11_6.log 11_6/timestamped_log/11_6-${ts}.log

12_3: 10_3
	mkdir -p 12_3/Release
	cp 10_3/Release/10_3.o 12_3/Release/12_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 12_3/scripts/12_3.prx +W bridge,../Release/12_3.o) 2>&1 |& tee -a 12_3/12_3.log 12_3/timestamped_log/12_3-${ts}.log
	set -o pipefail; (coreverify -obj 12_3 -s 1024 -pm 16384) 2>&1 |& tee -a 12_3/12_3.log 12_3/timestamped_log/12_3-${ts}.log

12_4: 10_3
	mkdir -p 12_4/Release
	cp 10_3/Release/10_3.o 12_4/Release/12_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 12_4/scripts/12_4.prx +W bridge,../Release/12_4.o) 2>&1 |& tee -a 12_4/12_4.log 12_4/timestamped_log/12_4-${ts}.log
	set -o pipefail; (coreverify -obj 12_4 -s 1024 -pm 16384) 2>&1 |& tee -a 12_4/12_4.log 12_4/timestamped_log/12_4-${ts}.log

12_5: 10_3
	mkdir -p 12_5/Release
	cp 10_3/Release/10_3.o 12_5/Release/12_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 12_5/scripts/12_5.prx +W bridge,../Release/12_5.o) 2>&1 |& tee -a 12_5/12_5.log 12_5/timestamped_log/12_5-${ts}.log
	set -o pipefail; (coreverify -obj 12_5 -s 1024 -pm 16384) 2>&1 |& tee -a 12_5/12_5.log 12_5/timestamped_log/12_5-${ts}.log

12_6: 10_3
	mkdir -p 12_6/Release
	cp 10_3/Release/10_3.o 12_6/Release/12_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 12_6/scripts/12_6.prx +W bridge,../Release/12_6.o) 2>&1 |& tee -a 12_6/12_6.log 12_6/timestamped_log/12_6-${ts}.log
	set -o pipefail; (coreverify -obj 12_6 -s 1024 -pm 16384) 2>&1 |& tee -a 12_6/12_6.log 12_6/timestamped_log/12_6-${ts}.log

13_3: 10_3
	mkdir -p 13_3/Release
	cp 10_3/Release/10_3.o 13_3/Release/13_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 13_3/scripts/13_3.prx +W bridge,../Release/13_3.o) 2>&1 |& tee -a 13_3/13_3.log 13_3/timestamped_log/13_3-${ts}.log
	set -o pipefail; (coreverify -obj 13_3 -s 1024 -pm 16384) 2>&1 |& tee -a 13_3/13_3.log 13_3/timestamped_log/13_3-${ts}.log

13_4: 10_3
	mkdir -p 13_4/Release
	cp 10_3/Release/10_3.o 13_4/Release/13_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 13_4/scripts/13_4.prx +W bridge,../Release/13_4.o) 2>&1 |& tee -a 13_4/13_4.log 13_4/timestamped_log/13_4-${ts}.log
	set -o pipefail; (coreverify -obj 13_4 -s 1024 -pm 16384) 2>&1 |& tee -a 13_4/13_4.log 13_4/timestamped_log/13_4-${ts}.log

13_5: 10_3
	mkdir -p 13_5/Release
	cp 10_3/Release/10_3.o 13_5/Release/13_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 13_5/scripts/13_5.prx +W bridge,../Release/13_5.o) 2>&1 |& tee -a 13_5/13_5.log 13_5/timestamped_log/13_5-${ts}.log
	set -o pipefail; (coreverify -obj 13_5 -s 1024 -pm 16384) 2>&1 |& tee -a 13_5/13_5.log 13_5/timestamped_log/13_5-${ts}.log

13_6: 10_3
	mkdir -p 13_6/Release
	cp 10_3/Release/10_3.o 13_6/Release/13_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 13_6/scripts/13_6.prx +W bridge,../Release/13_6.o) 2>&1 |& tee -a 13_6/13_6.log 13_6/timestamped_log/13_6-${ts}.log
	set -o pipefail; (coreverify -obj 13_6 -s 1024 -pm 16384) 2>&1 |& tee -a 13_6/13_6.log 13_6/timestamped_log/13_6-${ts}.log

14_1: 10_3
	mkdir -p 14_1/Release
	cp 10_3/Release/10_3.o 14_1/Release/14_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 14_1/scripts/14_1.prx +W bridge,../Release/14_1.o) 2>&1 |& tee -a 14_1/14_1.log 14_1/timestamped_log/14_1-${ts}.log
	set -o pipefail; (coreverify -obj 14_1 -s 1024 -pm 16384) 2>&1 |& tee -a 14_1/14_1.log 14_1/timestamped_log/14_1-${ts}.log

14_4: 10_3
	mkdir -p 14_4/Release
	cp 10_3/Release/10_3.o 14_4/Release/14_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 14_4/scripts/14_4.prx +W bridge,../Release/14_4.o) 2>&1 |& tee -a 14_4/14_4.log 14_4/timestamped_log/14_4-${ts}.log
	set -o pipefail; (coreverify -obj 14_4 -s 1024 -pm 16384) 2>&1 |& tee -a 14_4/14_4.log 14_4/timestamped_log/14_4-${ts}.log

14_5: 10_3
	mkdir -p 14_5/Release
	cp 10_3/Release/10_3.o 14_5/Release/14_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 14_5/scripts/14_5.prx +W bridge,../Release/14_5.o) 2>&1 |& tee -a 14_5/14_5.log 14_5/timestamped_log/14_5-${ts}.log
	set -o pipefail; (coreverify -obj 14_5 -s 1024 -pm 16384) 2>&1 |& tee -a 14_5/14_5.log 14_5/timestamped_log/14_5-${ts}.log

14_6: 10_3
	mkdir -p 14_6/Release
	cp 10_3/Release/10_3.o 14_6/Release/14_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 14_6/scripts/14_6.prx +W bridge,../Release/14_6.o) 2>&1 |& tee -a 14_6/14_6.log 14_6/timestamped_log/14_6-${ts}.log
	set -o pipefail; (coreverify -obj 14_6 -s 1024 -pm 16384) 2>&1 |& tee -a 14_6/14_6.log 14_6/timestamped_log/14_6-${ts}.log

15_1: 10_3
	mkdir -p 15_1/Release
	cp 10_3/Release/10_3.o 15_1/Release/15_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 15_1/scripts/15_1.prx +W bridge,../Release/15_1.o) 2>&1 |& tee -a 15_1/15_1.log 15_1/timestamped_log/15_1-${ts}.log
	set -o pipefail; (coreverify -obj 15_1 -s 1024 -pm 16384) 2>&1 |& tee -a 15_1/15_1.log 15_1/timestamped_log/15_1-${ts}.log

15_4: 10_3
	mkdir -p 15_4/Release
	cp 10_3/Release/10_3.o 15_4/Release/15_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 15_4/scripts/15_4.prx +W bridge,../Release/15_4.o) 2>&1 |& tee -a 15_4/15_4.log 15_4/timestamped_log/15_4-${ts}.log
	set -o pipefail; (coreverify -obj 15_4 -s 1024 -pm 16384) 2>&1 |& tee -a 15_4/15_4.log 15_4/timestamped_log/15_4-${ts}.log

15_5: 10_3
	mkdir -p 15_5/Release
	cp 10_3/Release/10_3.o 15_5/Release/15_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 15_5/scripts/15_5.prx +W bridge,../Release/15_5.o) 2>&1 |& tee -a 15_5/15_5.log 15_5/timestamped_log/15_5-${ts}.log
	set -o pipefail; (coreverify -obj 15_5 -s 1024 -pm 16384) 2>&1 |& tee -a 15_5/15_5.log 15_5/timestamped_log/15_5-${ts}.log

15_6: 10_3
	mkdir -p 15_6/Release
	cp 10_3/Release/10_3.o 15_6/Release/15_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 15_6/scripts/15_6.prx +W bridge,../Release/15_6.o) 2>&1 |& tee -a 15_6/15_6.log 15_6/timestamped_log/15_6-${ts}.log
	set -o pipefail; (coreverify -obj 15_6 -s 1024 -pm 16384) 2>&1 |& tee -a 15_6/15_6.log 15_6/timestamped_log/15_6-${ts}.log

16_4: 10_3
	mkdir -p 16_4/Release
	cp 10_3/Release/10_3.o 16_4/Release/16_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 16_4/scripts/16_4.prx +W bridge,../Release/16_4.o) 2>&1 |& tee -a 16_4/16_4.log 16_4/timestamped_log/16_4-${ts}.log
	set -o pipefail; (coreverify -obj 16_4 -s 1024 -pm 16384) 2>&1 |& tee -a 16_4/16_4.log 16_4/timestamped_log/16_4-${ts}.log

16_6: 10_3
	mkdir -p 16_6/Release
	cp 10_3/Release/10_3.o 16_6/Release/16_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 16_6/scripts/16_6.prx +W bridge,../Release/16_6.o) 2>&1 |& tee -a 16_6/16_6.log 16_6/timestamped_log/16_6-${ts}.log
	set -o pipefail; (coreverify -obj 16_6 -s 1024 -pm 16384) 2>&1 |& tee -a 16_6/16_6.log 16_6/timestamped_log/16_6-${ts}.log

12_1: 11_1
	mkdir -p 12_1/Release
	cp 11_1/Release/11_1.o 12_1/Release/12_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 12_1/scripts/12_1.prx +W bridge,../Release/12_1.o) 2>&1 |& tee -a 12_1/12_1.log 12_1/timestamped_log/12_1-${ts}.log
	set -o pipefail; (coreverify -obj 12_1 -s 1024 -pm 16384) 2>&1 |& tee -a 12_1/12_1.log 12_1/timestamped_log/12_1-${ts}.log

15_2: 11_1
	mkdir -p 15_2/Release
	cp 11_1/Release/11_1.o 15_2/Release/15_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 15_2/scripts/15_2.prx +W bridge,../Release/15_2.o) 2>&1 |& tee -a 15_2/15_2.log 15_2/timestamped_log/15_2-${ts}.log
	set -o pipefail; (coreverify -obj 15_2 -s 1024 -pm 16384) 2>&1 |& tee -a 15_2/15_2.log 15_2/timestamped_log/15_2-${ts}.log

16_2: 11_1
	mkdir -p 16_2/Release
	cp 11_1/Release/11_1.o 16_2/Release/16_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 16_2/scripts/16_2.prx +W bridge,../Release/16_2.o) 2>&1 |& tee -a 16_2/16_2.log 16_2/timestamped_log/16_2-${ts}.log
	set -o pipefail; (coreverify -obj 16_2 -s 1024 -pm 16384) 2>&1 |& tee -a 16_2/16_2.log 16_2/timestamped_log/16_2-${ts}.log

17_2: 11_1
	mkdir -p 17_2/Release
	cp 11_1/Release/11_1.o 17_2/Release/17_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 17_2/scripts/17_2.prx +W bridge,../Release/17_2.o) 2>&1 |& tee -a 17_2/17_2.log 17_2/timestamped_log/17_2-${ts}.log
	set -o pipefail; (coreverify -obj 17_2 -s 1024 -pm 16384) 2>&1 |& tee -a 17_2/17_2.log 17_2/timestamped_log/17_2-${ts}.log

12_2: 11_2
	mkdir -p 12_2/Release
	cp 11_2/Release/11_2.o 12_2/Release/12_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 12_2/scripts/12_2.prx +W bridge,../Release/12_2.o) 2>&1 |& tee -a 12_2/12_2.log 12_2/timestamped_log/12_2-${ts}.log
	set -o pipefail; (coreverify -obj 12_2 -s 1024 -pm 16384) 2>&1 |& tee -a 12_2/12_2.log 12_2/timestamped_log/12_2-${ts}.log

13_2: 11_2
	mkdir -p 13_2/Release
	cp 11_2/Release/11_2.o 13_2/Release/13_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 13_2/scripts/13_2.prx +W bridge,../Release/13_2.o) 2>&1 |& tee -a 13_2/13_2.log 13_2/timestamped_log/13_2-${ts}.log
	set -o pipefail; (coreverify -obj 13_2 -s 1024 -pm 16384) 2>&1 |& tee -a 13_2/13_2.log 13_2/timestamped_log/13_2-${ts}.log

14_3: 11_2
	mkdir -p 14_3/Release
	cp 11_2/Release/11_2.o 14_3/Release/14_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 14_3/scripts/14_3.prx +W bridge,../Release/14_3.o) 2>&1 |& tee -a 14_3/14_3.log 14_3/timestamped_log/14_3-${ts}.log
	set -o pipefail; (coreverify -obj 14_3 -s 1024 -pm 16384) 2>&1 |& tee -a 14_3/14_3.log 14_3/timestamped_log/14_3-${ts}.log

15_3: 11_2
	mkdir -p 15_3/Release
	cp 11_2/Release/11_2.o 15_3/Release/15_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 15_3/scripts/15_3.prx +W bridge,../Release/15_3.o) 2>&1 |& tee -a 15_3/15_3.log 15_3/timestamped_log/15_3-${ts}.log
	set -o pipefail; (coreverify -obj 15_3 -s 1024 -pm 16384) 2>&1 |& tee -a 15_3/15_3.log 15_3/timestamped_log/15_3-${ts}.log

13_7: 12_7
	mkdir -p 13_7/Release
	cp 12_7/Release/12_7.o 13_7/Release/13_7.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 13_7/scripts/13_7.prx +W bridge,../Release/13_7.o) 2>&1 |& tee -a 13_7/13_7.log 13_7/timestamped_log/13_7-${ts}.log
	set -o pipefail; (coreverify -obj 13_7 -s 1024 -pm 16384) 2>&1 |& tee -a 13_7/13_7.log 13_7/timestamped_log/13_7-${ts}.log

14_7: 12_7
	mkdir -p 14_7/Release
	cp 12_7/Release/12_7.o 14_7/Release/14_7.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 14_7/scripts/14_7.prx +W bridge,../Release/14_7.o) 2>&1 |& tee -a 14_7/14_7.log 14_7/timestamped_log/14_7-${ts}.log
	set -o pipefail; (coreverify -obj 14_7 -s 1024 -pm 16384) 2>&1 |& tee -a 14_7/14_7.log 14_7/timestamped_log/14_7-${ts}.log

15_7: 12_7
	mkdir -p 15_7/Release
	cp 12_7/Release/12_7.o 15_7/Release/15_7.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 15_7/scripts/15_7.prx +W bridge,../Release/15_7.o) 2>&1 |& tee -a 15_7/15_7.log 15_7/timestamped_log/15_7-${ts}.log
	set -o pipefail; (coreverify -obj 15_7 -s 1024 -pm 16384) 2>&1 |& tee -a 15_7/15_7.log 15_7/timestamped_log/15_7-${ts}.log

16_7: 12_7
	mkdir -p 16_7/Release
	cp 12_7/Release/12_7.o 16_7/Release/16_7.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 16_7/scripts/16_7.prx +W bridge,../Release/16_7.o) 2>&1 |& tee -a 16_7/16_7.log 16_7/timestamped_log/16_7-${ts}.log
	set -o pipefail; (coreverify -obj 16_7 -s 1024 -pm 16384) 2>&1 |& tee -a 16_7/16_7.log 16_7/timestamped_log/16_7-${ts}.log

17_3: 17_1
	mkdir -p 17_3/Release
	cp 17_1/Release/17_1.o 17_3/Release/17_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 17_3/scripts/17_3.prx +W bridge,../Release/17_3.o) 2>&1 |& tee -a 17_3/17_3.log 17_3/timestamped_log/17_3-${ts}.log
	set -o pipefail; (coreverify -obj 17_3 -s 1024 -pm 16384) 2>&1 |& tee -a 17_3/17_3.log 17_3/timestamped_log/17_3-${ts}.log

17_5: 17_1
	mkdir -p 17_5/Release
	cp 17_1/Release/17_1.o 17_5/Release/17_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 17_5/scripts/17_5.prx +W bridge,../Release/17_5.o) 2>&1 |& tee -a 17_5/17_5.log 17_5/timestamped_log/17_5-${ts}.log
	set -o pipefail; (coreverify -obj 17_5 -s 1024 -pm 16384) 2>&1 |& tee -a 17_5/17_5.log 17_5/timestamped_log/17_5-${ts}.log

24_0: 23_0
	mkdir -p 24_0/Release
	cp 23_0/Release/23_0.o 24_0/Release/24_0.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 24_0/scripts/24_0.prx +W bridge,../Release/24_0.o) 2>&1 |& tee -a 24_0/24_0.log 24_0/timestamped_log/24_0-${ts}.log
	set -o pipefail; (coreverify -obj 24_0 -s 1024 -pm 16384) 2>&1 |& tee -a 24_0/24_0.log 24_0/timestamped_log/24_0-${ts}.log

25_0: 23_0
	mkdir -p 25_0/Release
	cp 23_0/Release/23_0.o 25_0/Release/25_0.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 25_0/scripts/25_0.prx +W bridge,../Release/25_0.o) 2>&1 |& tee -a 25_0/25_0.log 25_0/timestamped_log/25_0-${ts}.log
	set -o pipefail; (coreverify -obj 25_0 -s 1024 -pm 16384) 2>&1 |& tee -a 25_0/25_0.log 25_0/timestamped_log/25_0-${ts}.log

clean:
	(rm -rf 0_0/Release)
	(rm -rf 0_1/Release)
	(rm -rf 0_2/Release)
	(rm -rf 0_3/Release)
	(rm -rf 0_4/Release)
	(rm -rf 0_5/Release)
	(rm -rf 0_6/Release)
	(rm -rf 0_7/Release)
	(rm -rf 1_0/Release)
	(rm -rf 1_1/Release)
	(rm -rf 1_2/Release)
	(rm -rf 1_3/Release)
	(rm -rf 1_4/Release)
	(rm -rf 1_5/Release)
	(rm -rf 1_6/Release)
	(rm -rf 2_0/Release)
	(rm -rf 2_1/Release)
	(rm -rf 2_2/Release)
	(rm -rf 2_3/Release)
	(rm -rf 2_4/Release)
	(rm -rf 2_5/Release)
	(rm -rf 2_6/Release)
	(rm -rf 3_0/Release)
	(rm -rf 3_1/Release)
	(rm -rf 3_2/Release)
	(rm -rf 3_3/Release)
	(rm -rf 3_4/Release)
	(rm -rf 3_5/Release)
	(rm -rf 3_6/Release)
	(rm -rf 4_0/Release)
	(rm -rf 4_1/Release)
	(rm -rf 4_2/Release)
	(rm -rf 4_3/Release)
	(rm -rf 4_4/Release)
	(rm -rf 4_5/Release)
	(rm -rf 4_6/Release)
	(rm -rf 5_0/Release)
	(rm -rf 5_1/Release)
	(rm -rf 5_2/Release)
	(rm -rf 5_3/Release)
	(rm -rf 5_4/Release)
	(rm -rf 5_5/Release)
	(rm -rf 5_6/Release)
	(rm -rf 6_0/Release)
	(rm -rf 6_1/Release)
	(rm -rf 6_2/Release)
	(rm -rf 6_3/Release)
	(rm -rf 6_4/Release)
	(rm -rf 6_5/Release)
	(rm -rf 6_6/Release)
	(rm -rf 7_0/Release)
	(rm -rf 7_1/Release)
	(rm -rf 7_2/Release)
	(rm -rf 7_3/Release)
	(rm -rf 7_4/Release)
	(rm -rf 7_5/Release)
	(rm -rf 7_6/Release)
	(rm -rf 8_0/Release)
	(rm -rf 8_1/Release)
	(rm -rf 8_2/Release)
	(rm -rf 8_3/Release)
	(rm -rf 8_4/Release)
	(rm -rf 8_5/Release)
	(rm -rf 8_6/Release)
	(rm -rf 10_1/Release)
	(rm -rf 10_2/Release)
	(rm -rf 10_3/Release)
	(rm -rf 10_4/Release)
	(rm -rf 10_5/Release)
	(rm -rf 10_6/Release)
	(rm -rf 10_7/Release)
	(rm -rf 11_1/Release)
	(rm -rf 11_2/Release)
	(rm -rf 11_3/Release)
	(rm -rf 11_4/Release)
	(rm -rf 11_5/Release)
	(rm -rf 11_6/Release)
	(rm -rf 11_7/Release)
	(rm -rf 12_1/Release)
	(rm -rf 12_2/Release)
	(rm -rf 12_3/Release)
	(rm -rf 12_4/Release)
	(rm -rf 12_5/Release)
	(rm -rf 12_6/Release)
	(rm -rf 12_7/Release)
	(rm -rf 13_1/Release)
	(rm -rf 13_2/Release)
	(rm -rf 13_3/Release)
	(rm -rf 13_4/Release)
	(rm -rf 13_5/Release)
	(rm -rf 13_6/Release)
	(rm -rf 13_7/Release)
	(rm -rf 14_1/Release)
	(rm -rf 14_2/Release)
	(rm -rf 14_3/Release)
	(rm -rf 14_4/Release)
	(rm -rf 14_5/Release)
	(rm -rf 14_6/Release)
	(rm -rf 14_7/Release)
	(rm -rf 15_1/Release)
	(rm -rf 15_2/Release)
	(rm -rf 15_3/Release)
	(rm -rf 15_4/Release)
	(rm -rf 15_5/Release)
	(rm -rf 15_6/Release)
	(rm -rf 15_7/Release)
	(rm -rf 16_1/Release)
	(rm -rf 16_2/Release)
	(rm -rf 16_3/Release)
	(rm -rf 16_4/Release)
	(rm -rf 16_5/Release)
	(rm -rf 16_6/Release)
	(rm -rf 16_7/Release)
	(rm -rf 17_1/Release)
	(rm -rf 17_2/Release)
	(rm -rf 17_3/Release)
	(rm -rf 17_4/Release)
	(rm -rf 17_5/Release)
	(rm -rf 17_6/Release)
	(rm -rf 17_7/Release)
	(rm -rf 19_0/Release)
	(rm -rf 20_0/Release)
	(rm -rf 21_0/Release)
	(rm -rf 22_0/Release)
	(rm -rf 23_0/Release)
	(rm -rf 24_0/Release)
	(rm -rf 25_0/Release)
	(rm -rf 26_0/Release)
