// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XTOPPL_H
#define XTOPPL_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xtoppl_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Control_BaseAddress;
} XToppl_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XToppl;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XToppl_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XToppl_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XToppl_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XToppl_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
#ifdef SDT
int XToppl_Initialize(XToppl *InstancePtr, UINTPTR BaseAddress);
XToppl_Config* XToppl_LookupConfig(UINTPTR BaseAddress);
#else
int XToppl_Initialize(XToppl *InstancePtr, u16 DeviceId);
XToppl_Config* XToppl_LookupConfig(u16 DeviceId);
#endif
int XToppl_CfgInitialize(XToppl *InstancePtr, XToppl_Config *ConfigPtr);
#else
int XToppl_Initialize(XToppl *InstancePtr, const char* InstanceName);
int XToppl_Release(XToppl *InstancePtr);
#endif

void XToppl_Start(XToppl *InstancePtr);
u32 XToppl_IsDone(XToppl *InstancePtr);
u32 XToppl_IsIdle(XToppl *InstancePtr);
u32 XToppl_IsReady(XToppl *InstancePtr);
void XToppl_Continue(XToppl *InstancePtr);
void XToppl_EnableAutoRestart(XToppl *InstancePtr);
void XToppl_DisableAutoRestart(XToppl *InstancePtr);

void XToppl_Set_dataIn(XToppl *InstancePtr, u64 Data);
u64 XToppl_Get_dataIn(XToppl *InstancePtr);
void XToppl_Set_U(XToppl *InstancePtr, u64 Data);
u64 XToppl_Get_U(XToppl *InstancePtr);
void XToppl_Set_S(XToppl *InstancePtr, u64 Data);
u64 XToppl_Get_S(XToppl *InstancePtr);
void XToppl_Set_ConvArray(XToppl *InstancePtr, u64 Data);
u64 XToppl_Get_ConvArray(XToppl *InstancePtr);
void XToppl_Set_ITER(XToppl *InstancePtr, u32 Data);
u32 XToppl_Get_ITER(XToppl *InstancePtr);

void XToppl_InterruptGlobalEnable(XToppl *InstancePtr);
void XToppl_InterruptGlobalDisable(XToppl *InstancePtr);
void XToppl_InterruptEnable(XToppl *InstancePtr, u32 Mask);
void XToppl_InterruptDisable(XToppl *InstancePtr, u32 Mask);
void XToppl_InterruptClear(XToppl *InstancePtr, u32 Mask);
u32 XToppl_InterruptGetEnabled(XToppl *InstancePtr);
u32 XToppl_InterruptGetStatus(XToppl *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
