// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xtoppl.h"

extern XToppl_Config XToppl_ConfigTable[];

#ifdef SDT
XToppl_Config *XToppl_LookupConfig(UINTPTR BaseAddress) {
	XToppl_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XToppl_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XToppl_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XToppl_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XToppl_Initialize(XToppl *InstancePtr, UINTPTR BaseAddress) {
	XToppl_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XToppl_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XToppl_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XToppl_Config *XToppl_LookupConfig(u16 DeviceId) {
	XToppl_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XTOPPL_NUM_INSTANCES; Index++) {
		if (XToppl_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XToppl_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XToppl_Initialize(XToppl *InstancePtr, u16 DeviceId) {
	XToppl_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XToppl_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XToppl_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

