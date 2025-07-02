// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================

extern "C" void AESL_WRAP_paillier_fl_kernel (
hls::stream<int > data_in,
int grad_stream,
hls::stream<int > data_out,
int num_samples,
int num_clients);
