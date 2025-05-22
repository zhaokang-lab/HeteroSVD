#include <iostream> 
#include <cstring>
#include "gen_cdo.h"
#include "../c_rts/aie_control.cpp"
extern "C" {
#include "cdo_driver.h"
}

void initializeGenerator(bool AXIdebug, bool endianness){
	if(AXIdebug)
		EnAXIdebug(); // Enables AXI-MM prints, helpful for debugging
	setEndianness(endianness);
	
}

void addInitConfigToCDO(const std::string &workDirPath){
	if(broadcastConfigForCoreEnable() != adf::return_code::ok)
		exit(EXIT_FAILURE);
	topNormGraph1_init(workDirPath);
	topSweepGraph1_init(workDirPath);
}

void addCoreEnableToCDO(){
	topNormGraph1_core_enable();
	topSweepGraph1_core_enable();
}

void addDbgHaltToCDO(){
	topNormGraph1_core_debug_halt();
	topSweepGraph1_core_debug_halt();
}

void addResetConfigToCDO(){
	resetPartition();
}

void addErrorHandlingToCDO(){
	enableErrorHandling();
}

void addClockGatingToCDO(){
	enableClockGating();
}

void addMemClearingConfigToCDO(){
	clearPartitionMems();
}

void addAieElfsToCDO(const std::string &workDirPath){
	std::vector<std::string> elfInfoPath;
	if(!topNormGraph1_load_elf(workDirPath, elfInfoPath))
		exit(EXIT_FAILURE);
	if(!topSweepGraph1_load_elf(workDirPath, elfInfoPath))
		exit(EXIT_FAILURE);
}

void generateFilesSeparately(const std::string &workDirPath, bool AXIdebug) {

	std::string filePath;

	// aie_cdo_reset.bin
	filePath = "aie_cdo_reset.bin";
	if(AXIdebug) std::cout << "START: Reset Configuration\n";
	startCDOFileStream(filePath.c_str());
	FileHeader();
	addResetConfigToCDO();
	configureHeader();
	endCurrentCDOFileStream();
	if(AXIdebug) std::cout << "DONE: Reset Configuration\n\n";

	// aie_cdo_clock_gating.bin
	filePath = "aie_cdo_clock_gating.bin";
	if(AXIdebug) std::cout << "START: Clock Gating Configuration\n";
	startCDOFileStream(filePath.c_str());
	FileHeader();
	addClockGatingToCDO();
	configureHeader();
	endCurrentCDOFileStream();
	if(AXIdebug) std::cout << "DONE: Clock Gating Configuration\n\n";

	// aie_cdo_mem_clear.bin
	filePath = "aie_cdo_mem_clear.bin";
	if(AXIdebug) std::cout << "START: Memory Clearing Configuration\n";
	startCDOFileStream(filePath.c_str());
	FileHeader();
	addMemClearingConfigToCDO();
	configureHeader();
	endCurrentCDOFileStream();
	if(AXIdebug) std::cout << "DONE: Memory Clearing Configuration\n\n";

	// aie_cdo_error_handling.bin
	filePath = "aie_cdo_error_handling.bin";
	if(AXIdebug) std::cout << "START: Error Handling Configuration\n";
	startCDOFileStream(filePath.c_str());
	FileHeader();
	addErrorHandlingToCDO();
	configureHeader();
	endCurrentCDOFileStream();
	if(AXIdebug) std::cout << "DONE: Error Handling Configuration\n\n";

	// aie_cdo_elfs.bin
	filePath = "aie_cdo_elfs.bin";
	if(AXIdebug) std::cout << "START: AIE ELF Configuration\n";
	startCDOFileStream(filePath.c_str());
	FileHeader();
	addAieElfsToCDO(workDirPath);
	configureHeader();
	endCurrentCDOFileStream();
	if(AXIdebug) std::cout << "DONE: AIE ELF Configuration\n\n";

	// aie_cdo_init.bin
	filePath = "aie_cdo_init.bin";
	if(AXIdebug) std::cout << "START: Initial (SHIM and AIE Array) Configuration\n";
	startCDOFileStream(filePath.c_str());
	FileHeader();
	addInitConfigToCDO(workDirPath);
	configureHeader();
	endCurrentCDOFileStream();
	if(AXIdebug) std::cout << "DONE: Initial (SHIM and AIE Array) Configuration\n\n";

	// aie_cdo_enable.bin
	filePath = "aie_cdo_enable.bin";
	if(AXIdebug) std::cout << "START: Core Enable Configuration\n";
	startCDOFileStream(filePath.c_str());
	FileHeader();
	addCoreEnableToCDO();
	configureHeader();
	endCurrentCDOFileStream();
	if(AXIdebug) std::cout << "DONE: Core Enable Configuration\n\n";

	// aie_cdo_debug.bin
	filePath = "aie_cdo_debug.bin";
	if(AXIdebug) std::cout << "START: Core Debug Halt Configuration\n";
	startCDOFileStream(filePath.c_str());
	FileHeader();
	addDbgHaltToCDO();
	configureHeader();
	endCurrentCDOFileStream();
	if(AXIdebug) std::cout << "DONE: Core Debug Halt Configuration\n\n";

	// aie_resources.bin
	const std::string aieRscsFilePath = workDirPath + "/config/aie_resources.bin";
	dumpAllocatedRscsToFile(aieRscsFilePath);
}
