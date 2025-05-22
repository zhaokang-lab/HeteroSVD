#environment
ROOTFS=${EDGE_COMMON_SW_PATH}/rootfs.ext4
IMAGE=${EDGE_COMMON_SW_PATH}/Image
SYSROOT = ${SYSROOT_PATH}/sysroots/cortexa72-cortexa53-xilinx-linux
SDKTARGETSYSROOT = ${SYSROOT}
BASE_PLATFORM ?= ${PLATFORM_REPO_PATHS}/xilinx_vck190_base_202320_1/xilinx_vck190_base_202320_1.xpfm

# Makefile input options
TARGET := hw_emu

XO_DIR=./$(TARGET).xo_dir
XSA_DIR=./$(TARGET).xsa_dir
PACKAGE_DIR = ./$(TARGET).xclbin_dir

# File names and locations
KERNEL = TopPL
KERNEL_SRC = ./pl/$(KERNEL).cpp
KERNEL_XO := ./pl/$(KERNEL).xo

XSA := ./$(XSA_DIR)/svd.xsa
HOST_SRC = ./ps/host.cpp
HOST = host.exe
XCLBIN = ./$(PACKAGE_DIR)/svd.xclbin
GRAPH := aie/TopGraph.cpp
GRAPH_O := libadf.a
CONFIG_FILE := conn.cfg


# Command-line options
VPP := v++
AIECC := v++ -c --mode aie
AIESIM := aiesimulator
X86SIM := x86simulator

HW_EMU_CMD := ./launch_hw_emu.sh -g 
#HW_EMU_CMD := ./launch_hw_emu.sh -add-env AIE_COMPILER_WORKDIR=../Work -aie-sim-options ../aiesimulator_output/aiesim_options.txt

# Frequency Option
AIE_FREQ = --freqhz=200000000
KERNEL_FREQ = --freqhz=200000000

KERNEL_FREQ_1 = --freqhz=200000000:TopPL_1.ap_clk


# compile aie
AIE_INCLUDE_FLAGS := --include "$(XILINX_VITIS)/aietools/include" --include "./aie" --include "./" 
AIE_STRATEGY := --aie.xlopt=0 --aie.runtime-opt --aie.verbose --aie.Xchess=main:backend.mist2.xargs=-ggraph
AIE_FLAGS := $(AIE_INCLUDE_FLAGS) $(AIE_STRATEGY) --platform $(BASE_PLATFORM) --work_dir ./Work
AIE_FLAGS += $(AIE_FREQ)

ifeq ($(TARGET),sw_emu)
	AIE_FLAGS += --target x86sim
else
	AIE_FLAGS += --target hw
endif 

# kernel build config
VPP_XO_FLAGS += -c --mode hls --platform $(BASE_PLATFORM)
VPP_XO_FLAGS += $(KERNEL_FREQ)
	
VPP_LINK_FLAGS := -l -t $(TARGET) --platform $(BASE_PLATFORM) $(KERNEL_XO) $(GRAPH_O) --save-temps -g --config $(CONFIG_FILE) -o $(XSA)
VPP_LINK_FLAGS += --vivado.impl.jobs 256

VPP_LINK_FLAGS += $(KERNEL_FREQ_1)

VPP_FLAGS := $(VPP_LINK_FLAGS)

CXX := $(XILINX_VITIS)/gnu/aarch64/lin/aarch64-linux/bin/aarch64-linux-gnu-g++

GCC_FLAGS := -Wall -c \
	     	 -std=c++20 \
			 -Wno-int-to-pointer-cast \
			 --sysroot=$(SYSROOT) \ 


GCC_INCLUDES := -I$(SYSROOT)/usr/include/xrt \
				-I./  \
				-I${XILINX_VITIS}/aietools/include \
				-I${XILINX_VITIS}/include \
				-I./aie \

GCC_LIB := -lxaiengine -ladf_api_xrt -lxrt_core -lxrt_coreutil \
		   -L$(SYSROOT)/usr/lib \
		   --sysroot=$(SYSROOT) \
		   -L${XILINX_VITIS}/aietools/lib/aarch64.o 

LDCLFLAGS := $(GCC_LIB)

.ONESHELL:
.PHONY: clean all kernels aie sim xsa host package run_emu


all: aie kernels xsa host package
sd_card: all

######################################################
# This step compiles the HLS C kernels and creates the *.xo's 
# which is used as the output and from the *.cpp files.
# Note : hw_emu and hw targets use the Unified CLI command to 
# compile HLS kernels

kernels: $(KERNEL_XO)
$(KERNEL_XO): $(KERNEL_SRC)
	mkdir -p $(XO_DIR)
	$(VPP) $(VPP_XO_FLAGS) --config pl/TopPL.cfg | tee $(XO_DIR)/$(KERNEL).log


aie: $(GRAPH_O)

#AIE or X86 Simulation
sim: $(GRAPH_O)
     
ifeq ($(TARGET),sw_emu)
	$(X86SIM) --pkg-dir=./Work --online -wdb
else
	$(AIESIM) --pkg-dir=./Work --online -wdb --profile
# $(AIESIM) --profile --pkg-dir=./Work --online -wdb
  
endif

#AIE or X86 compilation
$(GRAPH_O): $(GRAPH)
	$(AIECC) $(AIE_FLAGS) $(GRAPH)
#####################################################

########################################################
# Once the kernels and graph are generated, you can build
# the hardware part of the design. This creates an xsa
# that will be used to run the design on the platform.
xsa: $(XSA)
$(XSA): 
	mkdir -p $(XSA_DIR)
	$(VPP) $(VPP_LINK_FLAGS) || (echo "task: [xsa] failed error code: $$?"; exit 1)
	@echo "COMPLETE: .xsa created."
########################################################

############################################################################################################################
# For sw emulation, hw emulation and hardware, compile the PS code and generate the host.exe. This is needed for creating the sd_card.
host:  
	$(CXX) $(GCC_FLAGS) $(GCC_INCLUDES) -o host.o $(HOST_SRC)
	$(CXX) *.o $(GCC_LIB) -std=c++20 -o $(HOST)
	@echo "COMPLETE: Host application created."
############################################################################################################################

##################################################################################################
# Depending on the TARGET, it'll either generate the PDI for sw_emu,hw_emu or hw.

package: $(XCLBIN)
$(XCLBIN):
	mkdir -p $(PACKAGE_DIR)
	v++ -p -t ${TARGET} \
		-f ${BASE_PLATFORM} \
		--package.out_dir=$(PACKAGE_DIR) \
		--package.rootfs=${ROOTFS} \
		--package.image_format=ext4 \
		--package.boot_mode=sd \
		--package.kernel_image=${IMAGE} \
		--package.defer_aie_run \
		--package.sd_file $(HOST) $(XSA) $(GRAPH_O) -o $(XCLBIN) \
		--package.sd_dir ./data \
		--package.sd_file run.sh
	@echo "COMPLETE: emulation package created."

###################################################################################################

#Build the design and then run sw/hw emulation 
run: all run_emu

###########################################################################
run_emu: 
# If the target is for HW_EMU, launch the emulator
ifeq (${TARGET},hw_emu)
	cd ./$(PACKAGE_DIR)
	$(HW_EMU_CMD)
else
	@echo "Hardware build, no emulation executed."
endif


###########################################################################

clear_aie:
	rm -rf Work *.a
clear_pl:
	rm -rf $(XO_DIR) pl/*.xo
clear_ps: 
	rm -rf *.o *.exe 
clear_xsa:
	rm -rf $(XSA_DIR)
clear_package: 
	rm -rf $(PACKAGE_DIR)
clear_all: clear_aie clear_pl clear_ps clear_xsa clear_package
	rm -rf hls TopPL logs
	rm -rf _x v++* .Xil *.db *.log *.wcfg *.wdb pl_sample_counts *.csv .AIE_* ISS_* aiesimulator_* function_*
	 