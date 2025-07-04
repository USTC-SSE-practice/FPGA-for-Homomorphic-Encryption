// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XPAILLIER_FL_KERNEL_H
#define XPAILLIER_FL_KERNEL_H

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
#include "xpaillier_fl_kernel_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Control_BaseAddress;
} XPaillier_fl_kernel_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XPaillier_fl_kernel;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XPaillier_fl_kernel_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XPaillier_fl_kernel_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XPaillier_fl_kernel_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XPaillier_fl_kernel_ReadReg(BaseAddress, RegOffset) \
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
int XPaillier_fl_kernel_Initialize(XPaillier_fl_kernel *InstancePtr, u16 DeviceId);
XPaillier_fl_kernel_Config* XPaillier_fl_kernel_LookupConfig(u16 DeviceId);
int XPaillier_fl_kernel_CfgInitialize(XPaillier_fl_kernel *InstancePtr, XPaillier_fl_kernel_Config *ConfigPtr);
#else
int XPaillier_fl_kernel_Initialize(XPaillier_fl_kernel *InstancePtr, const char* InstanceName);
int XPaillier_fl_kernel_Release(XPaillier_fl_kernel *InstancePtr);
#endif

void XPaillier_fl_kernel_Start(XPaillier_fl_kernel *InstancePtr);
u32 XPaillier_fl_kernel_IsDone(XPaillier_fl_kernel *InstancePtr);
u32 XPaillier_fl_kernel_IsIdle(XPaillier_fl_kernel *InstancePtr);
u32 XPaillier_fl_kernel_IsReady(XPaillier_fl_kernel *InstancePtr);
void XPaillier_fl_kernel_EnableAutoRestart(XPaillier_fl_kernel *InstancePtr);
void XPaillier_fl_kernel_DisableAutoRestart(XPaillier_fl_kernel *InstancePtr);

void XPaillier_fl_kernel_Set_num_samples(XPaillier_fl_kernel *InstancePtr, u32 Data);
u32 XPaillier_fl_kernel_Get_num_samples(XPaillier_fl_kernel *InstancePtr);
void XPaillier_fl_kernel_Set_num_clients(XPaillier_fl_kernel *InstancePtr, u32 Data);
u32 XPaillier_fl_kernel_Get_num_clients(XPaillier_fl_kernel *InstancePtr);

void XPaillier_fl_kernel_InterruptGlobalEnable(XPaillier_fl_kernel *InstancePtr);
void XPaillier_fl_kernel_InterruptGlobalDisable(XPaillier_fl_kernel *InstancePtr);
void XPaillier_fl_kernel_InterruptEnable(XPaillier_fl_kernel *InstancePtr, u32 Mask);
void XPaillier_fl_kernel_InterruptDisable(XPaillier_fl_kernel *InstancePtr, u32 Mask);
void XPaillier_fl_kernel_InterruptClear(XPaillier_fl_kernel *InstancePtr, u32 Mask);
u32 XPaillier_fl_kernel_InterruptGetEnabled(XPaillier_fl_kernel *InstancePtr);
u32 XPaillier_fl_kernel_InterruptGetStatus(XPaillier_fl_kernel *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
