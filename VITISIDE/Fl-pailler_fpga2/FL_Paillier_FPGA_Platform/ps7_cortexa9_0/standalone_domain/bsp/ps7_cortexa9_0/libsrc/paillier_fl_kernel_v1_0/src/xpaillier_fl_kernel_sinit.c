// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xpaillier_fl_kernel.h"

extern XPaillier_fl_kernel_Config XPaillier_fl_kernel_ConfigTable[];

XPaillier_fl_kernel_Config *XPaillier_fl_kernel_LookupConfig(u16 DeviceId) {
	XPaillier_fl_kernel_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XPAILLIER_FL_KERNEL_NUM_INSTANCES; Index++) {
		if (XPaillier_fl_kernel_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XPaillier_fl_kernel_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XPaillier_fl_kernel_Initialize(XPaillier_fl_kernel *InstancePtr, u16 DeviceId) {
	XPaillier_fl_kernel_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XPaillier_fl_kernel_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XPaillier_fl_kernel_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

