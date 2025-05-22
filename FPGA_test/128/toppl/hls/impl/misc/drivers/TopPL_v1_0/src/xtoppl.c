// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xtoppl.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XToppl_CfgInitialize(XToppl *InstancePtr, XToppl_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XToppl_Start(XToppl *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XToppl_ReadReg(InstancePtr->Control_BaseAddress, XTOPPL_CONTROL_ADDR_AP_CTRL) & 0x80;
    XToppl_WriteReg(InstancePtr->Control_BaseAddress, XTOPPL_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XToppl_IsDone(XToppl *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XToppl_ReadReg(InstancePtr->Control_BaseAddress, XTOPPL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XToppl_IsIdle(XToppl *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XToppl_ReadReg(InstancePtr->Control_BaseAddress, XTOPPL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XToppl_IsReady(XToppl *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XToppl_ReadReg(InstancePtr->Control_BaseAddress, XTOPPL_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XToppl_Continue(XToppl *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XToppl_ReadReg(InstancePtr->Control_BaseAddress, XTOPPL_CONTROL_ADDR_AP_CTRL) & 0x80;
    XToppl_WriteReg(InstancePtr->Control_BaseAddress, XTOPPL_CONTROL_ADDR_AP_CTRL, Data | 0x10);
}

void XToppl_EnableAutoRestart(XToppl *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XToppl_WriteReg(InstancePtr->Control_BaseAddress, XTOPPL_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XToppl_DisableAutoRestart(XToppl *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XToppl_WriteReg(InstancePtr->Control_BaseAddress, XTOPPL_CONTROL_ADDR_AP_CTRL, 0);
}

void XToppl_Set_dataIn(XToppl *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XToppl_WriteReg(InstancePtr->Control_BaseAddress, XTOPPL_CONTROL_ADDR_DATAIN_DATA, (u32)(Data));
    XToppl_WriteReg(InstancePtr->Control_BaseAddress, XTOPPL_CONTROL_ADDR_DATAIN_DATA + 4, (u32)(Data >> 32));
}

u64 XToppl_Get_dataIn(XToppl *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XToppl_ReadReg(InstancePtr->Control_BaseAddress, XTOPPL_CONTROL_ADDR_DATAIN_DATA);
    Data += (u64)XToppl_ReadReg(InstancePtr->Control_BaseAddress, XTOPPL_CONTROL_ADDR_DATAIN_DATA + 4) << 32;
    return Data;
}

void XToppl_Set_U(XToppl *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XToppl_WriteReg(InstancePtr->Control_BaseAddress, XTOPPL_CONTROL_ADDR_U_DATA, (u32)(Data));
    XToppl_WriteReg(InstancePtr->Control_BaseAddress, XTOPPL_CONTROL_ADDR_U_DATA + 4, (u32)(Data >> 32));
}

u64 XToppl_Get_U(XToppl *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XToppl_ReadReg(InstancePtr->Control_BaseAddress, XTOPPL_CONTROL_ADDR_U_DATA);
    Data += (u64)XToppl_ReadReg(InstancePtr->Control_BaseAddress, XTOPPL_CONTROL_ADDR_U_DATA + 4) << 32;
    return Data;
}

void XToppl_Set_S(XToppl *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XToppl_WriteReg(InstancePtr->Control_BaseAddress, XTOPPL_CONTROL_ADDR_S_DATA, (u32)(Data));
    XToppl_WriteReg(InstancePtr->Control_BaseAddress, XTOPPL_CONTROL_ADDR_S_DATA + 4, (u32)(Data >> 32));
}

u64 XToppl_Get_S(XToppl *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XToppl_ReadReg(InstancePtr->Control_BaseAddress, XTOPPL_CONTROL_ADDR_S_DATA);
    Data += (u64)XToppl_ReadReg(InstancePtr->Control_BaseAddress, XTOPPL_CONTROL_ADDR_S_DATA + 4) << 32;
    return Data;
}

void XToppl_Set_ConvArray(XToppl *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XToppl_WriteReg(InstancePtr->Control_BaseAddress, XTOPPL_CONTROL_ADDR_CONVARRAY_DATA, (u32)(Data));
    XToppl_WriteReg(InstancePtr->Control_BaseAddress, XTOPPL_CONTROL_ADDR_CONVARRAY_DATA + 4, (u32)(Data >> 32));
}

u64 XToppl_Get_ConvArray(XToppl *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XToppl_ReadReg(InstancePtr->Control_BaseAddress, XTOPPL_CONTROL_ADDR_CONVARRAY_DATA);
    Data += (u64)XToppl_ReadReg(InstancePtr->Control_BaseAddress, XTOPPL_CONTROL_ADDR_CONVARRAY_DATA + 4) << 32;
    return Data;
}

void XToppl_Set_ITER(XToppl *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XToppl_WriteReg(InstancePtr->Control_BaseAddress, XTOPPL_CONTROL_ADDR_ITER_DATA, Data);
}

u32 XToppl_Get_ITER(XToppl *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XToppl_ReadReg(InstancePtr->Control_BaseAddress, XTOPPL_CONTROL_ADDR_ITER_DATA);
    return Data;
}

void XToppl_InterruptGlobalEnable(XToppl *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XToppl_WriteReg(InstancePtr->Control_BaseAddress, XTOPPL_CONTROL_ADDR_GIE, 1);
}

void XToppl_InterruptGlobalDisable(XToppl *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XToppl_WriteReg(InstancePtr->Control_BaseAddress, XTOPPL_CONTROL_ADDR_GIE, 0);
}

void XToppl_InterruptEnable(XToppl *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XToppl_ReadReg(InstancePtr->Control_BaseAddress, XTOPPL_CONTROL_ADDR_IER);
    XToppl_WriteReg(InstancePtr->Control_BaseAddress, XTOPPL_CONTROL_ADDR_IER, Register | Mask);
}

void XToppl_InterruptDisable(XToppl *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XToppl_ReadReg(InstancePtr->Control_BaseAddress, XTOPPL_CONTROL_ADDR_IER);
    XToppl_WriteReg(InstancePtr->Control_BaseAddress, XTOPPL_CONTROL_ADDR_IER, Register & (~Mask));
}

void XToppl_InterruptClear(XToppl *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XToppl_WriteReg(InstancePtr->Control_BaseAddress, XTOPPL_CONTROL_ADDR_ISR, Mask);
}

u32 XToppl_InterruptGetEnabled(XToppl *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XToppl_ReadReg(InstancePtr->Control_BaseAddress, XTOPPL_CONTROL_ADDR_IER);
}

u32 XToppl_InterruptGetStatus(XToppl *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XToppl_ReadReg(InstancePtr->Control_BaseAddress, XTOPPL_CONTROL_ADDR_ISR);
}

