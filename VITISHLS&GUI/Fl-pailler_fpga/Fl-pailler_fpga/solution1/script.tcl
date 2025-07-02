############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Fl-pailler_fpga
set_top paillier_fl_kernel
add_files src/paillier_hls.h
add_files src/paillier_hls.cpp
add_files -tb testbench_tb/paillier_hls_tb.cpp -cflags "-Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7z020-clg484-1}
create_clock -period 10 -name default
config_export -flow syn -format ip_catalog -output F:/Fl-pailler_fpga/ -rtl verilog -vivado_clock 10
source "./Fl-pailler_fpga/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -flow syn -rtl verilog -format ip_catalog -output F:/Fl-pailler_fpga/
