// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xpaillier_fl_kernel.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XPaillier_fl_kernel_CfgInitialize(XPaillier_fl_kernel *InstancePtr, XPaillier_fl_kernel_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XPaillier_fl_kernel_Start(XPaillier_fl_kernel *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPaillier_fl_kernel_ReadReg(InstancePtr->Control_BaseAddress, XPAILLIER_FL_KERNEL_CONTROL_ADDR_AP_CTRL) & 0x80;
    XPaillier_fl_kernel_WriteReg(InstancePtr->Control_BaseAddress, XPAILLIER_FL_KERNEL_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XPaillier_fl_kernel_IsDone(XPaillier_fl_kernel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPaillier_fl_kernel_ReadReg(InstancePtr->Control_BaseAddress, XPAILLIER_FL_KERNEL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XPaillier_fl_kernel_IsIdle(XPaillier_fl_kernel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPaillier_fl_kernel_ReadReg(InstancePtr->Control_BaseAddress, XPAILLIER_FL_KERNEL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XPaillier_fl_kernel_IsReady(XPaillier_fl_kernel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPaillier_fl_kernel_ReadReg(InstancePtr->Control_BaseAddress, XPAILLIER_FL_KERNEL_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XPaillier_fl_kernel_EnableAutoRestart(XPaillier_fl_kernel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPaillier_fl_kernel_WriteReg(InstancePtr->Control_BaseAddress, XPAILLIER_FL_KERNEL_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XPaillier_fl_kernel_DisableAutoRestart(XPaillier_fl_kernel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPaillier_fl_kernel_WriteReg(InstancePtr->Control_BaseAddress, XPAILLIER_FL_KERNEL_CONTROL_ADDR_AP_CTRL, 0);
}

void XPaillier_fl_kernel_Set_num_samples(XPaillier_fl_kernel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPaillier_fl_kernel_WriteReg(InstancePtr->Control_BaseAddress, XPAILLIER_FL_KERNEL_CONTROL_ADDR_NUM_SAMPLES_DATA, Data);
}

u32 XPaillier_fl_kernel_Get_num_samples(XPaillier_fl_kernel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPaillier_fl_kernel_ReadReg(InstancePtr->Control_BaseAddress, XPAILLIER_FL_KERNEL_CONTROL_ADDR_NUM_SAMPLES_DATA);
    return Data;
}

void XPaillier_fl_kernel_Set_num_clients(XPaillier_fl_kernel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPaillier_fl_kernel_WriteReg(InstancePtr->Control_BaseAddress, XPAILLIER_FL_KERNEL_CONTROL_ADDR_NUM_CLIENTS_DATA, Data);
}

u32 XPaillier_fl_kernel_Get_num_clients(XPaillier_fl_kernel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPaillier_fl_kernel_ReadReg(InstancePtr->Control_BaseAddress, XPAILLIER_FL_KERNEL_CONTROL_ADDR_NUM_CLIENTS_DATA);
    return Data;
}

void XPaillier_fl_kernel_InterruptGlobalEnable(XPaillier_fl_kernel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPaillier_fl_kernel_WriteReg(InstancePtr->Control_BaseAddress, XPAILLIER_FL_KERNEL_CONTROL_ADDR_GIE, 1);
}

void XPaillier_fl_kernel_InterruptGlobalDisable(XPaillier_fl_kernel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPaillier_fl_kernel_WriteReg(InstancePtr->Control_BaseAddress, XPAILLIER_FL_KERNEL_CONTROL_ADDR_GIE, 0);
}

void XPaillier_fl_kernel_InterruptEnable(XPaillier_fl_kernel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XPaillier_fl_kernel_ReadReg(InstancePtr->Control_BaseAddress, XPAILLIER_FL_KERNEL_CONTROL_ADDR_IER);
    XPaillier_fl_kernel_WriteReg(InstancePtr->Control_BaseAddress, XPAILLIER_FL_KERNEL_CONTROL_ADDR_IER, Register | Mask);
}

void XPaillier_fl_kernel_InterruptDisable(XPaillier_fl_kernel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XPaillier_fl_kernel_ReadReg(InstancePtr->Control_BaseAddress, XPAILLIER_FL_KERNEL_CONTROL_ADDR_IER);
    XPaillier_fl_kernel_WriteReg(InstancePtr->Control_BaseAddress, XPAILLIER_FL_KERNEL_CONTROL_ADDR_IER, Register & (~Mask));
}

void XPaillier_fl_kernel_InterruptClear(XPaillier_fl_kernel *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPaillier_fl_kernel_WriteReg(InstancePtr->Control_BaseAddress, XPAILLIER_FL_KERNEL_CONTROL_ADDR_ISR, Mask);
}

u32 XPaillier_fl_kernel_InterruptGetEnabled(XPaillier_fl_kernel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XPaillier_fl_kernel_ReadReg(InstancePtr->Control_BaseAddress, XPAILLIER_FL_KERNEL_CONTROL_ADDR_IER);
}

u32 XPaillier_fl_kernel_InterruptGetStatus(XPaillier_fl_kernel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XPaillier_fl_kernel_ReadReg(InstancePtr->Control_BaseAddress, XPAILLIER_FL_KERNEL_CONTROL_ADDR_ISR);
}

