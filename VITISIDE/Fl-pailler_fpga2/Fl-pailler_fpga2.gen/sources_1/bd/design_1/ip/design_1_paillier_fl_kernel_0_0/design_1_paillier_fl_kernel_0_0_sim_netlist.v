// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Jun 23 16:42:32 2025
// Host        : CHINAMI-A709ULQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Administrator/VivadoProjects/Fl-pailler_fpga2/Fl-pailler_fpga2.gen/sources_1/bd/design_1/ip/design_1_paillier_fl_kernel_0_0/design_1_paillier_fl_kernel_0_0_sim_netlist.v
// Design      : design_1_paillier_fl_kernel_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_paillier_fl_kernel_0_0,paillier_fl_kernel,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "paillier_fl_kernel,Vivado 2022.2" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module design_1_paillier_fl_kernel_0_0
   (s_axi_control_AWADDR,
    s_axi_control_AWVALID,
    s_axi_control_AWREADY,
    s_axi_control_WDATA,
    s_axi_control_WSTRB,
    s_axi_control_WVALID,
    s_axi_control_WREADY,
    s_axi_control_BRESP,
    s_axi_control_BVALID,
    s_axi_control_BREADY,
    s_axi_control_ARADDR,
    s_axi_control_ARVALID,
    s_axi_control_ARREADY,
    s_axi_control_RDATA,
    s_axi_control_RRESP,
    s_axi_control_RVALID,
    s_axi_control_RREADY,
    ap_clk,
    ap_rst_n,
    interrupt,
    data_in_TVALID,
    data_in_TREADY,
    data_in_TDATA,
    grad_stream_TVALID,
    grad_stream_TREADY,
    grad_stream_TDATA,
    data_out_TVALID,
    data_out_TREADY,
    data_out_TDATA);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR" *) input [4:0]s_axi_control_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID" *) input s_axi_control_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY" *) output s_axi_control_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WDATA" *) input [31:0]s_axi_control_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB" *) input [3:0]s_axi_control_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WVALID" *) input s_axi_control_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WREADY" *) output s_axi_control_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BRESP" *) output [1:0]s_axi_control_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BVALID" *) output s_axi_control_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BREADY" *) input s_axi_control_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR" *) input [4:0]s_axi_control_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID" *) input s_axi_control_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY" *) output s_axi_control_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RDATA" *) output [31:0]s_axi_control_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RRESP" *) output [1:0]s_axi_control_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RVALID" *) output s_axi_control_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 5, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_control_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_control:data_in:grad_stream:data_out, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 data_in TVALID" *) input data_in_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 data_in TREADY" *) output data_in_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 data_in TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME data_in, TDATA_NUM_BYTES 16, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0" *) input [127:0]data_in_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 grad_stream TVALID" *) input grad_stream_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 grad_stream TREADY" *) output grad_stream_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 grad_stream TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME grad_stream, TDATA_NUM_BYTES 16, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0" *) input [127:0]grad_stream_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 data_out TVALID" *) output data_out_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 data_out TREADY" *) input data_out_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 data_out TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME data_out, TDATA_NUM_BYTES 16, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0" *) output [127:0]data_out_TDATA;

  wire \<const0> ;
  wire ap_clk;
  wire ap_rst_n;
  wire [127:0]data_in_TDATA;
  wire data_in_TREADY;
  wire data_in_TVALID;
  wire [127:0]data_out_TDATA;
  wire data_out_TREADY;
  wire data_out_TVALID;
  wire grad_stream_TREADY;
  wire grad_stream_TVALID;
  wire interrupt;
  wire [4:0]s_axi_control_ARADDR;
  wire s_axi_control_ARREADY;
  wire s_axi_control_ARVALID;
  wire [4:0]s_axi_control_AWADDR;
  wire s_axi_control_AWREADY;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [31:0]s_axi_control_RDATA;
  wire s_axi_control_RREADY;
  wire s_axi_control_RVALID;
  wire [31:0]s_axi_control_WDATA;
  wire s_axi_control_WREADY;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire [1:0]NLW_inst_s_axi_control_BRESP_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_control_RRESP_UNCONNECTED;

  assign s_axi_control_BRESP[1] = \<const0> ;
  assign s_axi_control_BRESP[0] = \<const0> ;
  assign s_axi_control_RRESP[1] = \<const0> ;
  assign s_axi_control_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_S_AXI_CONTROL_ADDR_WIDTH = "5" *) 
  (* C_S_AXI_CONTROL_DATA_WIDTH = "32" *) 
  (* C_S_AXI_CONTROL_WSTRB_WIDTH = "4" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_WSTRB_WIDTH = "4" *) 
  (* SDX_KERNEL = "true" *) 
  (* SDX_KERNEL_SYNTH_INST = "inst" *) 
  (* SDX_KERNEL_TYPE = "hls" *) 
  (* ap_ST_fsm_state1 = "4'b0001" *) 
  (* ap_ST_fsm_state2 = "4'b0010" *) 
  (* ap_ST_fsm_state3 = "4'b0100" *) 
  (* ap_ST_fsm_state4 = "4'b1000" *) 
  design_1_paillier_fl_kernel_0_0_paillier_fl_kernel inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .data_in_TDATA(data_in_TDATA),
        .data_in_TREADY(data_in_TREADY),
        .data_in_TVALID(data_in_TVALID),
        .data_out_TDATA(data_out_TDATA),
        .data_out_TREADY(data_out_TREADY),
        .data_out_TVALID(data_out_TVALID),
        .grad_stream_TDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .grad_stream_TREADY(grad_stream_TREADY),
        .grad_stream_TVALID(grad_stream_TVALID),
        .interrupt(interrupt),
        .s_axi_control_ARADDR(s_axi_control_ARADDR),
        .s_axi_control_ARREADY(s_axi_control_ARREADY),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_AWADDR(s_axi_control_AWADDR),
        .s_axi_control_AWREADY(s_axi_control_AWREADY),
        .s_axi_control_AWVALID(s_axi_control_AWVALID),
        .s_axi_control_BREADY(s_axi_control_BREADY),
        .s_axi_control_BRESP(NLW_inst_s_axi_control_BRESP_UNCONNECTED[1:0]),
        .s_axi_control_BVALID(s_axi_control_BVALID),
        .s_axi_control_RDATA(s_axi_control_RDATA),
        .s_axi_control_RREADY(s_axi_control_RREADY),
        .s_axi_control_RRESP(NLW_inst_s_axi_control_RRESP_UNCONNECTED[1:0]),
        .s_axi_control_RVALID(s_axi_control_RVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WREADY(s_axi_control_WREADY),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID));
endmodule

(* C_S_AXI_CONTROL_ADDR_WIDTH = "5" *) (* C_S_AXI_CONTROL_DATA_WIDTH = "32" *) (* C_S_AXI_CONTROL_WSTRB_WIDTH = "4" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_WSTRB_WIDTH = "4" *) (* ORIG_REF_NAME = "paillier_fl_kernel" *) 
(* ap_ST_fsm_state1 = "4'b0001" *) (* ap_ST_fsm_state2 = "4'b0010" *) (* ap_ST_fsm_state3 = "4'b0100" *) 
(* ap_ST_fsm_state4 = "4'b1000" *) (* hls_module = "yes" *) 
module design_1_paillier_fl_kernel_0_0_paillier_fl_kernel
   (ap_clk,
    ap_rst_n,
    data_in_TDATA,
    data_in_TVALID,
    data_in_TREADY,
    grad_stream_TDATA,
    grad_stream_TVALID,
    grad_stream_TREADY,
    data_out_TDATA,
    data_out_TVALID,
    data_out_TREADY,
    s_axi_control_AWVALID,
    s_axi_control_AWREADY,
    s_axi_control_AWADDR,
    s_axi_control_WVALID,
    s_axi_control_WREADY,
    s_axi_control_WDATA,
    s_axi_control_WSTRB,
    s_axi_control_ARVALID,
    s_axi_control_ARREADY,
    s_axi_control_ARADDR,
    s_axi_control_RVALID,
    s_axi_control_RREADY,
    s_axi_control_RDATA,
    s_axi_control_RRESP,
    s_axi_control_BVALID,
    s_axi_control_BREADY,
    s_axi_control_BRESP,
    interrupt);
  input ap_clk;
  input ap_rst_n;
  input [127:0]data_in_TDATA;
  input data_in_TVALID;
  output data_in_TREADY;
  input [127:0]grad_stream_TDATA;
  input grad_stream_TVALID;
  output grad_stream_TREADY;
  output [127:0]data_out_TDATA;
  output data_out_TVALID;
  input data_out_TREADY;
  input s_axi_control_AWVALID;
  output s_axi_control_AWREADY;
  input [4:0]s_axi_control_AWADDR;
  input s_axi_control_WVALID;
  output s_axi_control_WREADY;
  input [31:0]s_axi_control_WDATA;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_ARVALID;
  output s_axi_control_ARREADY;
  input [4:0]s_axi_control_ARADDR;
  output s_axi_control_RVALID;
  input s_axi_control_RREADY;
  output [31:0]s_axi_control_RDATA;
  output [1:0]s_axi_control_RRESP;
  output s_axi_control_BVALID;
  input s_axi_control_BREADY;
  output [1:0]s_axi_control_BRESP;
  output interrupt;

  wire \<const0> ;
  wire B_V_data_1_sel_wr;
  wire ap_CS_fsm_state1;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire ap_CS_fsm_state4;
  wire [3:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_start;
  wire control_s_axi_U_n_10;
  wire control_s_axi_U_n_11;
  wire control_s_axi_U_n_12;
  wire control_s_axi_U_n_13;
  wire control_s_axi_U_n_14;
  wire control_s_axi_U_n_15;
  wire control_s_axi_U_n_16;
  wire control_s_axi_U_n_17;
  wire control_s_axi_U_n_18;
  wire control_s_axi_U_n_19;
  wire control_s_axi_U_n_20;
  wire control_s_axi_U_n_21;
  wire control_s_axi_U_n_22;
  wire control_s_axi_U_n_23;
  wire control_s_axi_U_n_24;
  wire control_s_axi_U_n_25;
  wire control_s_axi_U_n_26;
  wire control_s_axi_U_n_27;
  wire control_s_axi_U_n_28;
  wire control_s_axi_U_n_29;
  wire control_s_axi_U_n_30;
  wire control_s_axi_U_n_31;
  wire control_s_axi_U_n_32;
  wire control_s_axi_U_n_33;
  wire control_s_axi_U_n_34;
  wire control_s_axi_U_n_35;
  wire control_s_axi_U_n_36;
  wire control_s_axi_U_n_37;
  wire control_s_axi_U_n_38;
  wire control_s_axi_U_n_39;
  wire control_s_axi_U_n_40;
  wire [127:0]data_in;
  wire [127:0]data_in_TDATA;
  wire [64:64]data_in_TDATA_int_regslice;
  wire data_in_TREADY;
  wire data_in_TVALID;
  wire data_in_TVALID_int_regslice;
  wire [127:0]data_out_TDATA;
  wire data_out_TREADY;
  wire data_out_TREADY_int_regslice;
  wire data_out_TVALID;
  wire grad_stream_TREADY;
  wire grad_stream_TVALID;
  wire grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_ready;
  wire grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg;
  wire grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_n_129;
  wire grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_n_130;
  wire grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_n_131;
  wire grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_n_132;
  wire grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_n_133;
  wire i_fu_44;
  wire icmp_ln178_fu_65_p2;
  wire icmp_ln178_fu_88_p2;
  wire icmp_ln178_reg_76;
  wire interrupt;
  wire regslice_both_data_in_U_n_10;
  wire regslice_both_data_in_U_n_100;
  wire regslice_both_data_in_U_n_101;
  wire regslice_both_data_in_U_n_102;
  wire regslice_both_data_in_U_n_103;
  wire regslice_both_data_in_U_n_104;
  wire regslice_both_data_in_U_n_105;
  wire regslice_both_data_in_U_n_106;
  wire regslice_both_data_in_U_n_107;
  wire regslice_both_data_in_U_n_108;
  wire regslice_both_data_in_U_n_109;
  wire regslice_both_data_in_U_n_11;
  wire regslice_both_data_in_U_n_110;
  wire regslice_both_data_in_U_n_111;
  wire regslice_both_data_in_U_n_112;
  wire regslice_both_data_in_U_n_113;
  wire regslice_both_data_in_U_n_114;
  wire regslice_both_data_in_U_n_115;
  wire regslice_both_data_in_U_n_116;
  wire regslice_both_data_in_U_n_117;
  wire regslice_both_data_in_U_n_118;
  wire regslice_both_data_in_U_n_119;
  wire regslice_both_data_in_U_n_12;
  wire regslice_both_data_in_U_n_120;
  wire regslice_both_data_in_U_n_121;
  wire regslice_both_data_in_U_n_122;
  wire regslice_both_data_in_U_n_123;
  wire regslice_both_data_in_U_n_124;
  wire regslice_both_data_in_U_n_125;
  wire regslice_both_data_in_U_n_126;
  wire regslice_both_data_in_U_n_127;
  wire regslice_both_data_in_U_n_128;
  wire regslice_both_data_in_U_n_129;
  wire regslice_both_data_in_U_n_13;
  wire regslice_both_data_in_U_n_130;
  wire regslice_both_data_in_U_n_131;
  wire regslice_both_data_in_U_n_133;
  wire regslice_both_data_in_U_n_14;
  wire regslice_both_data_in_U_n_15;
  wire regslice_both_data_in_U_n_16;
  wire regslice_both_data_in_U_n_17;
  wire regslice_both_data_in_U_n_18;
  wire regslice_both_data_in_U_n_19;
  wire regslice_both_data_in_U_n_20;
  wire regslice_both_data_in_U_n_21;
  wire regslice_both_data_in_U_n_22;
  wire regslice_both_data_in_U_n_23;
  wire regslice_both_data_in_U_n_24;
  wire regslice_both_data_in_U_n_25;
  wire regslice_both_data_in_U_n_26;
  wire regslice_both_data_in_U_n_27;
  wire regslice_both_data_in_U_n_28;
  wire regslice_both_data_in_U_n_29;
  wire regslice_both_data_in_U_n_30;
  wire regslice_both_data_in_U_n_31;
  wire regslice_both_data_in_U_n_32;
  wire regslice_both_data_in_U_n_33;
  wire regslice_both_data_in_U_n_34;
  wire regslice_both_data_in_U_n_35;
  wire regslice_both_data_in_U_n_36;
  wire regslice_both_data_in_U_n_37;
  wire regslice_both_data_in_U_n_38;
  wire regslice_both_data_in_U_n_39;
  wire regslice_both_data_in_U_n_4;
  wire regslice_both_data_in_U_n_40;
  wire regslice_both_data_in_U_n_41;
  wire regslice_both_data_in_U_n_42;
  wire regslice_both_data_in_U_n_43;
  wire regslice_both_data_in_U_n_44;
  wire regslice_both_data_in_U_n_45;
  wire regslice_both_data_in_U_n_46;
  wire regslice_both_data_in_U_n_47;
  wire regslice_both_data_in_U_n_48;
  wire regslice_both_data_in_U_n_49;
  wire regslice_both_data_in_U_n_5;
  wire regslice_both_data_in_U_n_50;
  wire regslice_both_data_in_U_n_51;
  wire regslice_both_data_in_U_n_52;
  wire regslice_both_data_in_U_n_53;
  wire regslice_both_data_in_U_n_54;
  wire regslice_both_data_in_U_n_55;
  wire regslice_both_data_in_U_n_56;
  wire regslice_both_data_in_U_n_57;
  wire regslice_both_data_in_U_n_58;
  wire regslice_both_data_in_U_n_59;
  wire regslice_both_data_in_U_n_6;
  wire regslice_both_data_in_U_n_60;
  wire regslice_both_data_in_U_n_61;
  wire regslice_both_data_in_U_n_62;
  wire regslice_both_data_in_U_n_63;
  wire regslice_both_data_in_U_n_64;
  wire regslice_both_data_in_U_n_65;
  wire regslice_both_data_in_U_n_66;
  wire regslice_both_data_in_U_n_67;
  wire regslice_both_data_in_U_n_68;
  wire regslice_both_data_in_U_n_69;
  wire regslice_both_data_in_U_n_7;
  wire regslice_both_data_in_U_n_70;
  wire regslice_both_data_in_U_n_71;
  wire regslice_both_data_in_U_n_72;
  wire regslice_both_data_in_U_n_73;
  wire regslice_both_data_in_U_n_74;
  wire regslice_both_data_in_U_n_75;
  wire regslice_both_data_in_U_n_76;
  wire regslice_both_data_in_U_n_77;
  wire regslice_both_data_in_U_n_78;
  wire regslice_both_data_in_U_n_79;
  wire regslice_both_data_in_U_n_8;
  wire regslice_both_data_in_U_n_80;
  wire regslice_both_data_in_U_n_81;
  wire regslice_both_data_in_U_n_82;
  wire regslice_both_data_in_U_n_83;
  wire regslice_both_data_in_U_n_84;
  wire regslice_both_data_in_U_n_85;
  wire regslice_both_data_in_U_n_86;
  wire regslice_both_data_in_U_n_87;
  wire regslice_both_data_in_U_n_88;
  wire regslice_both_data_in_U_n_89;
  wire regslice_both_data_in_U_n_9;
  wire regslice_both_data_in_U_n_90;
  wire regslice_both_data_in_U_n_91;
  wire regslice_both_data_in_U_n_92;
  wire regslice_both_data_in_U_n_93;
  wire regslice_both_data_in_U_n_94;
  wire regslice_both_data_in_U_n_95;
  wire regslice_both_data_in_U_n_96;
  wire regslice_both_data_in_U_n_97;
  wire regslice_both_data_in_U_n_98;
  wire regslice_both_data_in_U_n_99;
  wire regslice_both_data_out_U_n_5;
  wire [4:0]s_axi_control_ARADDR;
  wire s_axi_control_ARREADY;
  wire s_axi_control_ARVALID;
  wire [4:0]s_axi_control_AWADDR;
  wire s_axi_control_AWREADY;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [31:0]s_axi_control_RDATA;
  wire s_axi_control_RREADY;
  wire s_axi_control_RVALID;
  wire [31:0]s_axi_control_WDATA;
  wire s_axi_control_WREADY;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire [30:0]trunc_ln163_reg_71;

  assign s_axi_control_BRESP[1] = \<const0> ;
  assign s_axi_control_BRESP[0] = \<const0> ;
  assign s_axi_control_RRESP[1] = \<const0> ;
  assign s_axi_control_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(ap_CS_fsm_state1),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_state3),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_state4),
        .R(ap_rst_n_inv));
  design_1_paillier_fl_kernel_0_0_paillier_fl_kernel_control_s_axi control_s_axi_U
       (.CO(icmp_ln178_fu_65_p2),
        .D(ap_NS_fsm[2:1]),
        .\FSM_onehot_rstate_reg[1]_0 (s_axi_control_ARREADY),
        .\FSM_onehot_wstate_reg[1]_0 (s_axi_control_AWREADY),
        .\FSM_onehot_wstate_reg[2]_0 (s_axi_control_WREADY),
        .Q({ap_CS_fsm_state3,ap_CS_fsm_state2,ap_CS_fsm_state1}),
        .\ap_CS_fsm_reg[2] (grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_n_131),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .ap_start(ap_start),
        .int_ap_start_reg_0(regslice_both_data_out_U_n_5),
        .\int_num_samples_reg[30]_0 ({control_s_axi_U_n_10,control_s_axi_U_n_11,control_s_axi_U_n_12,control_s_axi_U_n_13,control_s_axi_U_n_14,control_s_axi_U_n_15,control_s_axi_U_n_16,control_s_axi_U_n_17,control_s_axi_U_n_18,control_s_axi_U_n_19,control_s_axi_U_n_20,control_s_axi_U_n_21,control_s_axi_U_n_22,control_s_axi_U_n_23,control_s_axi_U_n_24,control_s_axi_U_n_25,control_s_axi_U_n_26,control_s_axi_U_n_27,control_s_axi_U_n_28,control_s_axi_U_n_29,control_s_axi_U_n_30,control_s_axi_U_n_31,control_s_axi_U_n_32,control_s_axi_U_n_33,control_s_axi_U_n_34,control_s_axi_U_n_35,control_s_axi_U_n_36,control_s_axi_U_n_37,control_s_axi_U_n_38,control_s_axi_U_n_39,control_s_axi_U_n_40}),
        .interrupt(interrupt),
        .s_axi_control_ARADDR(s_axi_control_ARADDR),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_AWADDR(s_axi_control_AWADDR),
        .s_axi_control_AWVALID(s_axi_control_AWVALID),
        .s_axi_control_BREADY(s_axi_control_BREADY),
        .s_axi_control_BVALID(s_axi_control_BVALID),
        .s_axi_control_RDATA(s_axi_control_RDATA),
        .s_axi_control_RREADY(s_axi_control_RREADY),
        .s_axi_control_RVALID(s_axi_control_RVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID));
  design_1_paillier_fl_kernel_0_0_paillier_fl_kernel_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1 grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52
       (.B_V_data_1_sel_wr(B_V_data_1_sel_wr),
        .\B_V_data_1_state_reg[0] (grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_n_130),
        .\B_V_data_1_state_reg[0]_0 (grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_n_131),
        .\B_V_data_1_state_reg[1] (grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_n_132),
        .CO(icmp_ln178_fu_88_p2),
        .D(data_in),
        .E(i_fu_44),
        .Q(ap_CS_fsm_state3),
        .\ap_CS_fsm_reg[2] (grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_n_133),
        .ap_clk(ap_clk),
        .ap_loop_exit_ready_pp0_iter1_reg_reg_0(regslice_both_data_in_U_n_131),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .data_in_TDATA_int_regslice(data_in_TDATA_int_regslice),
        .data_in_TVALID_int_regslice(data_in_TVALID_int_regslice),
        .\data_in_read_reg_124_reg[127]_0 ({regslice_both_data_in_U_n_4,regslice_both_data_in_U_n_5,regslice_both_data_in_U_n_6,regslice_both_data_in_U_n_7,regslice_both_data_in_U_n_8,regslice_both_data_in_U_n_9,regslice_both_data_in_U_n_10,regslice_both_data_in_U_n_11,regslice_both_data_in_U_n_12,regslice_both_data_in_U_n_13,regslice_both_data_in_U_n_14,regslice_both_data_in_U_n_15,regslice_both_data_in_U_n_16,regslice_both_data_in_U_n_17,regslice_both_data_in_U_n_18,regslice_both_data_in_U_n_19,regslice_both_data_in_U_n_20,regslice_both_data_in_U_n_21,regslice_both_data_in_U_n_22,regslice_both_data_in_U_n_23,regslice_both_data_in_U_n_24,regslice_both_data_in_U_n_25,regslice_both_data_in_U_n_26,regslice_both_data_in_U_n_27,regslice_both_data_in_U_n_28,regslice_both_data_in_U_n_29,regslice_both_data_in_U_n_30,regslice_both_data_in_U_n_31,regslice_both_data_in_U_n_32,regslice_both_data_in_U_n_33,regslice_both_data_in_U_n_34,regslice_both_data_in_U_n_35,regslice_both_data_in_U_n_36,regslice_both_data_in_U_n_37,regslice_both_data_in_U_n_38,regslice_both_data_in_U_n_39,regslice_both_data_in_U_n_40,regslice_both_data_in_U_n_41,regslice_both_data_in_U_n_42,regslice_both_data_in_U_n_43,regslice_both_data_in_U_n_44,regslice_both_data_in_U_n_45,regslice_both_data_in_U_n_46,regslice_both_data_in_U_n_47,regslice_both_data_in_U_n_48,regslice_both_data_in_U_n_49,regslice_both_data_in_U_n_50,regslice_both_data_in_U_n_51,regslice_both_data_in_U_n_52,regslice_both_data_in_U_n_53,regslice_both_data_in_U_n_54,regslice_both_data_in_U_n_55,regslice_both_data_in_U_n_56,regslice_both_data_in_U_n_57,regslice_both_data_in_U_n_58,regslice_both_data_in_U_n_59,regslice_both_data_in_U_n_60,regslice_both_data_in_U_n_61,regslice_both_data_in_U_n_62,regslice_both_data_in_U_n_63,regslice_both_data_in_U_n_64,regslice_both_data_in_U_n_65,regslice_both_data_in_U_n_66,regslice_both_data_in_U_n_67,regslice_both_data_in_U_n_68,regslice_both_data_in_U_n_69,regslice_both_data_in_U_n_70,regslice_both_data_in_U_n_71,regslice_both_data_in_U_n_72,regslice_both_data_in_U_n_73,regslice_both_data_in_U_n_74,regslice_both_data_in_U_n_75,regslice_both_data_in_U_n_76,regslice_both_data_in_U_n_77,regslice_both_data_in_U_n_78,regslice_both_data_in_U_n_79,regslice_both_data_in_U_n_80,regslice_both_data_in_U_n_81,regslice_both_data_in_U_n_82,regslice_both_data_in_U_n_83,regslice_both_data_in_U_n_84,regslice_both_data_in_U_n_85,regslice_both_data_in_U_n_86,regslice_both_data_in_U_n_87,regslice_both_data_in_U_n_88,regslice_both_data_in_U_n_89,regslice_both_data_in_U_n_90,regslice_both_data_in_U_n_91,regslice_both_data_in_U_n_92,regslice_both_data_in_U_n_93,regslice_both_data_in_U_n_94,regslice_both_data_in_U_n_95,regslice_both_data_in_U_n_96,regslice_both_data_in_U_n_97,regslice_both_data_in_U_n_98,regslice_both_data_in_U_n_99,regslice_both_data_in_U_n_100,regslice_both_data_in_U_n_101,regslice_both_data_in_U_n_102,regslice_both_data_in_U_n_103,regslice_both_data_in_U_n_104,regslice_both_data_in_U_n_105,regslice_both_data_in_U_n_106,regslice_both_data_in_U_n_107,regslice_both_data_in_U_n_108,regslice_both_data_in_U_n_109,regslice_both_data_in_U_n_110,regslice_both_data_in_U_n_111,regslice_both_data_in_U_n_112,regslice_both_data_in_U_n_113,regslice_both_data_in_U_n_114,regslice_both_data_in_U_n_115,regslice_both_data_in_U_n_116,regslice_both_data_in_U_n_117,regslice_both_data_in_U_n_118,regslice_both_data_in_U_n_119,regslice_both_data_in_U_n_120,regslice_both_data_in_U_n_121,regslice_both_data_in_U_n_122,regslice_both_data_in_U_n_123,regslice_both_data_in_U_n_124,regslice_both_data_in_U_n_125,regslice_both_data_in_U_n_126,regslice_both_data_in_U_n_127,regslice_both_data_in_U_n_128,regslice_both_data_in_U_n_129,regslice_both_data_in_U_n_130}),
        .data_out_TREADY_int_regslice(data_out_TREADY_int_regslice),
        .grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_ready(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_ready),
        .grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg_reg(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_n_129),
        .icmp_ln178_fu_88_p2_carry__2_0(trunc_ln163_reg_71),
        .icmp_ln178_reg_76(icmp_ln178_reg_76));
  FDRE #(
    .INIT(1'b0)) 
    grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_data_in_U_n_133),
        .Q(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .R(ap_rst_n_inv));
  FDRE \icmp_ln178_reg_76_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(icmp_ln178_fu_65_p2),
        .Q(icmp_ln178_reg_76),
        .R(1'b0));
  design_1_paillier_fl_kernel_0_0_paillier_fl_kernel_regslice_both regslice_both_data_in_U
       (.\B_V_data_1_payload_A_reg[64]_0 (regslice_both_data_in_U_n_131),
        .\B_V_data_1_payload_B_reg[127]_0 ({regslice_both_data_in_U_n_4,regslice_both_data_in_U_n_5,regslice_both_data_in_U_n_6,regslice_both_data_in_U_n_7,regslice_both_data_in_U_n_8,regslice_both_data_in_U_n_9,regslice_both_data_in_U_n_10,regslice_both_data_in_U_n_11,regslice_both_data_in_U_n_12,regslice_both_data_in_U_n_13,regslice_both_data_in_U_n_14,regslice_both_data_in_U_n_15,regslice_both_data_in_U_n_16,regslice_both_data_in_U_n_17,regslice_both_data_in_U_n_18,regslice_both_data_in_U_n_19,regslice_both_data_in_U_n_20,regslice_both_data_in_U_n_21,regslice_both_data_in_U_n_22,regslice_both_data_in_U_n_23,regslice_both_data_in_U_n_24,regslice_both_data_in_U_n_25,regslice_both_data_in_U_n_26,regslice_both_data_in_U_n_27,regslice_both_data_in_U_n_28,regslice_both_data_in_U_n_29,regslice_both_data_in_U_n_30,regslice_both_data_in_U_n_31,regslice_both_data_in_U_n_32,regslice_both_data_in_U_n_33,regslice_both_data_in_U_n_34,regslice_both_data_in_U_n_35,regslice_both_data_in_U_n_36,regslice_both_data_in_U_n_37,regslice_both_data_in_U_n_38,regslice_both_data_in_U_n_39,regslice_both_data_in_U_n_40,regslice_both_data_in_U_n_41,regslice_both_data_in_U_n_42,regslice_both_data_in_U_n_43,regslice_both_data_in_U_n_44,regslice_both_data_in_U_n_45,regslice_both_data_in_U_n_46,regslice_both_data_in_U_n_47,regslice_both_data_in_U_n_48,regslice_both_data_in_U_n_49,regslice_both_data_in_U_n_50,regslice_both_data_in_U_n_51,regslice_both_data_in_U_n_52,regslice_both_data_in_U_n_53,regslice_both_data_in_U_n_54,regslice_both_data_in_U_n_55,regslice_both_data_in_U_n_56,regslice_both_data_in_U_n_57,regslice_both_data_in_U_n_58,regslice_both_data_in_U_n_59,regslice_both_data_in_U_n_60,regslice_both_data_in_U_n_61,regslice_both_data_in_U_n_62,regslice_both_data_in_U_n_63,regslice_both_data_in_U_n_64,regslice_both_data_in_U_n_65,regslice_both_data_in_U_n_66,regslice_both_data_in_U_n_67,regslice_both_data_in_U_n_68,regslice_both_data_in_U_n_69,regslice_both_data_in_U_n_70,regslice_both_data_in_U_n_71,regslice_both_data_in_U_n_72,regslice_both_data_in_U_n_73,regslice_both_data_in_U_n_74,regslice_both_data_in_U_n_75,regslice_both_data_in_U_n_76,regslice_both_data_in_U_n_77,regslice_both_data_in_U_n_78,regslice_both_data_in_U_n_79,regslice_both_data_in_U_n_80,regslice_both_data_in_U_n_81,regslice_both_data_in_U_n_82,regslice_both_data_in_U_n_83,regslice_both_data_in_U_n_84,regslice_both_data_in_U_n_85,regslice_both_data_in_U_n_86,regslice_both_data_in_U_n_87,regslice_both_data_in_U_n_88,regslice_both_data_in_U_n_89,regslice_both_data_in_U_n_90,regslice_both_data_in_U_n_91,regslice_both_data_in_U_n_92,regslice_both_data_in_U_n_93,regslice_both_data_in_U_n_94,regslice_both_data_in_U_n_95,regslice_both_data_in_U_n_96,regslice_both_data_in_U_n_97,regslice_both_data_in_U_n_98,regslice_both_data_in_U_n_99,regslice_both_data_in_U_n_100,regslice_both_data_in_U_n_101,regslice_both_data_in_U_n_102,regslice_both_data_in_U_n_103,regslice_both_data_in_U_n_104,regslice_both_data_in_U_n_105,regslice_both_data_in_U_n_106,regslice_both_data_in_U_n_107,regslice_both_data_in_U_n_108,regslice_both_data_in_U_n_109,regslice_both_data_in_U_n_110,regslice_both_data_in_U_n_111,regslice_both_data_in_U_n_112,regslice_both_data_in_U_n_113,regslice_both_data_in_U_n_114,regslice_both_data_in_U_n_115,regslice_both_data_in_U_n_116,regslice_both_data_in_U_n_117,regslice_both_data_in_U_n_118,regslice_both_data_in_U_n_119,regslice_both_data_in_U_n_120,regslice_both_data_in_U_n_121,regslice_both_data_in_U_n_122,regslice_both_data_in_U_n_123,regslice_both_data_in_U_n_124,regslice_both_data_in_U_n_125,regslice_both_data_in_U_n_126,regslice_both_data_in_U_n_127,regslice_both_data_in_U_n_128,regslice_both_data_in_U_n_129,regslice_both_data_in_U_n_130}),
        .B_V_data_1_sel_rd_reg_0(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_n_132),
        .\B_V_data_1_state_reg[1]_0 (data_in_TREADY),
        .CO(icmp_ln178_fu_88_p2),
        .E(i_fu_44),
        .Q(ap_CS_fsm_state2),
        .\ap_CS_fsm_reg[1] (regslice_both_data_in_U_n_133),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .data_in_TDATA(data_in_TDATA),
        .data_in_TDATA_int_regslice(data_in_TDATA_int_regslice),
        .data_in_TVALID(data_in_TVALID),
        .data_in_TVALID_int_regslice(data_in_TVALID_int_regslice),
        .grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_ready(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_ready),
        .grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .\i_fu_44_reg[30] (grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_n_129));
  design_1_paillier_fl_kernel_0_0_paillier_fl_kernel_regslice_both_0 regslice_both_data_out_U
       (.\B_V_data_1_payload_A_reg[127]_0 (data_in),
        .B_V_data_1_sel_wr(B_V_data_1_sel_wr),
        .B_V_data_1_sel_wr_reg_0(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_n_133),
        .\B_V_data_1_state_reg[0]_0 (data_out_TVALID),
        .\B_V_data_1_state_reg[1]_0 (grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_n_130),
        .D({ap_NS_fsm[3],ap_NS_fsm[0]}),
        .Q({ap_CS_fsm_state4,ap_CS_fsm_state3,ap_CS_fsm_state1}),
        .\ap_CS_fsm_reg[3] (regslice_both_data_out_U_n_5),
        .\ap_CS_fsm_reg[3]_0 (grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_n_131),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .ap_start(ap_start),
        .data_out_TDATA(data_out_TDATA),
        .data_out_TREADY(data_out_TREADY),
        .data_out_TREADY_int_regslice(data_out_TREADY_int_regslice));
  design_1_paillier_fl_kernel_0_0_paillier_fl_kernel_regslice_both_1 regslice_both_grad_stream_U
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .grad_stream_TREADY(grad_stream_TREADY),
        .grad_stream_TVALID(grad_stream_TVALID));
  FDRE \trunc_ln163_reg_71_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_40),
        .Q(trunc_ln163_reg_71[0]),
        .R(1'b0));
  FDRE \trunc_ln163_reg_71_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_30),
        .Q(trunc_ln163_reg_71[10]),
        .R(1'b0));
  FDRE \trunc_ln163_reg_71_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_29),
        .Q(trunc_ln163_reg_71[11]),
        .R(1'b0));
  FDRE \trunc_ln163_reg_71_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_28),
        .Q(trunc_ln163_reg_71[12]),
        .R(1'b0));
  FDRE \trunc_ln163_reg_71_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_27),
        .Q(trunc_ln163_reg_71[13]),
        .R(1'b0));
  FDRE \trunc_ln163_reg_71_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_26),
        .Q(trunc_ln163_reg_71[14]),
        .R(1'b0));
  FDRE \trunc_ln163_reg_71_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_25),
        .Q(trunc_ln163_reg_71[15]),
        .R(1'b0));
  FDRE \trunc_ln163_reg_71_reg[16] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_24),
        .Q(trunc_ln163_reg_71[16]),
        .R(1'b0));
  FDRE \trunc_ln163_reg_71_reg[17] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_23),
        .Q(trunc_ln163_reg_71[17]),
        .R(1'b0));
  FDRE \trunc_ln163_reg_71_reg[18] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_22),
        .Q(trunc_ln163_reg_71[18]),
        .R(1'b0));
  FDRE \trunc_ln163_reg_71_reg[19] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_21),
        .Q(trunc_ln163_reg_71[19]),
        .R(1'b0));
  FDRE \trunc_ln163_reg_71_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_39),
        .Q(trunc_ln163_reg_71[1]),
        .R(1'b0));
  FDRE \trunc_ln163_reg_71_reg[20] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_20),
        .Q(trunc_ln163_reg_71[20]),
        .R(1'b0));
  FDRE \trunc_ln163_reg_71_reg[21] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_19),
        .Q(trunc_ln163_reg_71[21]),
        .R(1'b0));
  FDRE \trunc_ln163_reg_71_reg[22] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_18),
        .Q(trunc_ln163_reg_71[22]),
        .R(1'b0));
  FDRE \trunc_ln163_reg_71_reg[23] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_17),
        .Q(trunc_ln163_reg_71[23]),
        .R(1'b0));
  FDRE \trunc_ln163_reg_71_reg[24] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_16),
        .Q(trunc_ln163_reg_71[24]),
        .R(1'b0));
  FDRE \trunc_ln163_reg_71_reg[25] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_15),
        .Q(trunc_ln163_reg_71[25]),
        .R(1'b0));
  FDRE \trunc_ln163_reg_71_reg[26] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_14),
        .Q(trunc_ln163_reg_71[26]),
        .R(1'b0));
  FDRE \trunc_ln163_reg_71_reg[27] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_13),
        .Q(trunc_ln163_reg_71[27]),
        .R(1'b0));
  FDRE \trunc_ln163_reg_71_reg[28] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_12),
        .Q(trunc_ln163_reg_71[28]),
        .R(1'b0));
  FDRE \trunc_ln163_reg_71_reg[29] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_11),
        .Q(trunc_ln163_reg_71[29]),
        .R(1'b0));
  FDRE \trunc_ln163_reg_71_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_38),
        .Q(trunc_ln163_reg_71[2]),
        .R(1'b0));
  FDRE \trunc_ln163_reg_71_reg[30] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_10),
        .Q(trunc_ln163_reg_71[30]),
        .R(1'b0));
  FDRE \trunc_ln163_reg_71_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_37),
        .Q(trunc_ln163_reg_71[3]),
        .R(1'b0));
  FDRE \trunc_ln163_reg_71_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_36),
        .Q(trunc_ln163_reg_71[4]),
        .R(1'b0));
  FDRE \trunc_ln163_reg_71_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_35),
        .Q(trunc_ln163_reg_71[5]),
        .R(1'b0));
  FDRE \trunc_ln163_reg_71_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_34),
        .Q(trunc_ln163_reg_71[6]),
        .R(1'b0));
  FDRE \trunc_ln163_reg_71_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_33),
        .Q(trunc_ln163_reg_71[7]),
        .R(1'b0));
  FDRE \trunc_ln163_reg_71_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_32),
        .Q(trunc_ln163_reg_71[8]),
        .R(1'b0));
  FDRE \trunc_ln163_reg_71_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_31),
        .Q(trunc_ln163_reg_71[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "paillier_fl_kernel_control_s_axi" *) 
module design_1_paillier_fl_kernel_0_0_paillier_fl_kernel_control_s_axi
   (ap_rst_n_inv,
    interrupt,
    CO,
    D,
    ap_start,
    \FSM_onehot_rstate_reg[1]_0 ,
    s_axi_control_RVALID,
    \FSM_onehot_wstate_reg[2]_0 ,
    s_axi_control_BVALID,
    \int_num_samples_reg[30]_0 ,
    \FSM_onehot_wstate_reg[1]_0 ,
    s_axi_control_RDATA,
    ap_clk,
    \ap_CS_fsm_reg[2] ,
    Q,
    ap_rst_n,
    s_axi_control_ARVALID,
    s_axi_control_RREADY,
    s_axi_control_WSTRB,
    s_axi_control_WDATA,
    s_axi_control_WVALID,
    s_axi_control_BREADY,
    int_ap_start_reg_0,
    s_axi_control_ARADDR,
    s_axi_control_AWVALID,
    s_axi_control_AWADDR);
  output ap_rst_n_inv;
  output interrupt;
  output [0:0]CO;
  output [1:0]D;
  output ap_start;
  output \FSM_onehot_rstate_reg[1]_0 ;
  output s_axi_control_RVALID;
  output \FSM_onehot_wstate_reg[2]_0 ;
  output s_axi_control_BVALID;
  output [30:0]\int_num_samples_reg[30]_0 ;
  output \FSM_onehot_wstate_reg[1]_0 ;
  output [31:0]s_axi_control_RDATA;
  input ap_clk;
  input \ap_CS_fsm_reg[2] ;
  input [2:0]Q;
  input ap_rst_n;
  input s_axi_control_ARVALID;
  input s_axi_control_RREADY;
  input [3:0]s_axi_control_WSTRB;
  input [31:0]s_axi_control_WDATA;
  input s_axi_control_WVALID;
  input s_axi_control_BREADY;
  input int_ap_start_reg_0;
  input [4:0]s_axi_control_ARADDR;
  input s_axi_control_AWVALID;
  input [4:0]s_axi_control_AWADDR;

  wire [0:0]CO;
  wire [1:0]D;
  wire \FSM_onehot_rstate[1]_i_1_n_0 ;
  wire \FSM_onehot_rstate[2]_i_1_n_0 ;
  wire \FSM_onehot_rstate_reg[1]_0 ;
  wire \FSM_onehot_wstate[1]_i_1_n_0 ;
  wire \FSM_onehot_wstate[2]_i_1_n_0 ;
  wire \FSM_onehot_wstate[3]_i_1_n_0 ;
  wire \FSM_onehot_wstate_reg[1]_0 ;
  wire \FSM_onehot_wstate_reg[2]_0 ;
  wire [2:0]Q;
  wire \ap_CS_fsm_reg[2] ;
  wire ap_clk;
  wire ap_idle;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_start;
  wire ar_hs;
  wire auto_restart_status_i_1_n_0;
  wire auto_restart_status_reg_n_0;
  wire \icmp_ln178_reg_76[0]_i_10_n_0 ;
  wire \icmp_ln178_reg_76[0]_i_12_n_0 ;
  wire \icmp_ln178_reg_76[0]_i_13_n_0 ;
  wire \icmp_ln178_reg_76[0]_i_14_n_0 ;
  wire \icmp_ln178_reg_76[0]_i_15_n_0 ;
  wire \icmp_ln178_reg_76[0]_i_16_n_0 ;
  wire \icmp_ln178_reg_76[0]_i_17_n_0 ;
  wire \icmp_ln178_reg_76[0]_i_18_n_0 ;
  wire \icmp_ln178_reg_76[0]_i_19_n_0 ;
  wire \icmp_ln178_reg_76[0]_i_21_n_0 ;
  wire \icmp_ln178_reg_76[0]_i_22_n_0 ;
  wire \icmp_ln178_reg_76[0]_i_23_n_0 ;
  wire \icmp_ln178_reg_76[0]_i_24_n_0 ;
  wire \icmp_ln178_reg_76[0]_i_25_n_0 ;
  wire \icmp_ln178_reg_76[0]_i_26_n_0 ;
  wire \icmp_ln178_reg_76[0]_i_27_n_0 ;
  wire \icmp_ln178_reg_76[0]_i_28_n_0 ;
  wire \icmp_ln178_reg_76[0]_i_29_n_0 ;
  wire \icmp_ln178_reg_76[0]_i_30_n_0 ;
  wire \icmp_ln178_reg_76[0]_i_31_n_0 ;
  wire \icmp_ln178_reg_76[0]_i_32_n_0 ;
  wire \icmp_ln178_reg_76[0]_i_33_n_0 ;
  wire \icmp_ln178_reg_76[0]_i_34_n_0 ;
  wire \icmp_ln178_reg_76[0]_i_35_n_0 ;
  wire \icmp_ln178_reg_76[0]_i_36_n_0 ;
  wire \icmp_ln178_reg_76[0]_i_3_n_0 ;
  wire \icmp_ln178_reg_76[0]_i_4_n_0 ;
  wire \icmp_ln178_reg_76[0]_i_5_n_0 ;
  wire \icmp_ln178_reg_76[0]_i_6_n_0 ;
  wire \icmp_ln178_reg_76[0]_i_7_n_0 ;
  wire \icmp_ln178_reg_76[0]_i_8_n_0 ;
  wire \icmp_ln178_reg_76[0]_i_9_n_0 ;
  wire \icmp_ln178_reg_76_reg[0]_i_11_n_0 ;
  wire \icmp_ln178_reg_76_reg[0]_i_11_n_1 ;
  wire \icmp_ln178_reg_76_reg[0]_i_11_n_2 ;
  wire \icmp_ln178_reg_76_reg[0]_i_11_n_3 ;
  wire \icmp_ln178_reg_76_reg[0]_i_1_n_1 ;
  wire \icmp_ln178_reg_76_reg[0]_i_1_n_2 ;
  wire \icmp_ln178_reg_76_reg[0]_i_1_n_3 ;
  wire \icmp_ln178_reg_76_reg[0]_i_20_n_0 ;
  wire \icmp_ln178_reg_76_reg[0]_i_20_n_1 ;
  wire \icmp_ln178_reg_76_reg[0]_i_20_n_2 ;
  wire \icmp_ln178_reg_76_reg[0]_i_20_n_3 ;
  wire \icmp_ln178_reg_76_reg[0]_i_2_n_0 ;
  wire \icmp_ln178_reg_76_reg[0]_i_2_n_1 ;
  wire \icmp_ln178_reg_76_reg[0]_i_2_n_2 ;
  wire \icmp_ln178_reg_76_reg[0]_i_2_n_3 ;
  wire int_ap_ready;
  wire int_ap_ready_i_1_n_0;
  wire int_ap_start5_out;
  wire int_ap_start_i_1_n_0;
  wire int_ap_start_reg_0;
  wire int_auto_restart_i_1_n_0;
  wire int_gie_i_1_n_0;
  wire int_gie_i_2_n_0;
  wire int_gie_reg_n_0;
  wire \int_ier[0]_i_1_n_0 ;
  wire \int_ier[1]_i_1_n_0 ;
  wire \int_ier_reg_n_0_[0] ;
  wire int_interrupt0;
  wire int_isr7_out;
  wire \int_isr[0]_i_1_n_0 ;
  wire \int_isr[1]_i_1_n_0 ;
  wire \int_isr_reg_n_0_[0] ;
  wire \int_isr_reg_n_0_[1] ;
  wire [31:0]int_num_clients0;
  wire \int_num_clients[31]_i_1_n_0 ;
  wire \int_num_clients_reg_n_0_[0] ;
  wire \int_num_clients_reg_n_0_[10] ;
  wire \int_num_clients_reg_n_0_[11] ;
  wire \int_num_clients_reg_n_0_[12] ;
  wire \int_num_clients_reg_n_0_[13] ;
  wire \int_num_clients_reg_n_0_[14] ;
  wire \int_num_clients_reg_n_0_[15] ;
  wire \int_num_clients_reg_n_0_[16] ;
  wire \int_num_clients_reg_n_0_[17] ;
  wire \int_num_clients_reg_n_0_[18] ;
  wire \int_num_clients_reg_n_0_[19] ;
  wire \int_num_clients_reg_n_0_[1] ;
  wire \int_num_clients_reg_n_0_[20] ;
  wire \int_num_clients_reg_n_0_[21] ;
  wire \int_num_clients_reg_n_0_[22] ;
  wire \int_num_clients_reg_n_0_[23] ;
  wire \int_num_clients_reg_n_0_[24] ;
  wire \int_num_clients_reg_n_0_[25] ;
  wire \int_num_clients_reg_n_0_[26] ;
  wire \int_num_clients_reg_n_0_[27] ;
  wire \int_num_clients_reg_n_0_[28] ;
  wire \int_num_clients_reg_n_0_[29] ;
  wire \int_num_clients_reg_n_0_[2] ;
  wire \int_num_clients_reg_n_0_[30] ;
  wire \int_num_clients_reg_n_0_[31] ;
  wire \int_num_clients_reg_n_0_[3] ;
  wire \int_num_clients_reg_n_0_[4] ;
  wire \int_num_clients_reg_n_0_[5] ;
  wire \int_num_clients_reg_n_0_[6] ;
  wire \int_num_clients_reg_n_0_[7] ;
  wire \int_num_clients_reg_n_0_[8] ;
  wire \int_num_clients_reg_n_0_[9] ;
  wire [31:0]int_num_samples0;
  wire \int_num_samples[31]_i_1_n_0 ;
  wire \int_num_samples[31]_i_3_n_0 ;
  wire [30:0]\int_num_samples_reg[30]_0 ;
  wire \int_num_samples_reg_n_0_[31] ;
  wire int_task_ap_done;
  wire int_task_ap_done_i_1_n_0;
  wire interrupt;
  wire p_0_in;
  wire [7:2]p_2_in;
  wire [31:0]rdata;
  wire \rdata[0]_i_2_n_0 ;
  wire \rdata[0]_i_3_n_0 ;
  wire \rdata[1]_i_2_n_0 ;
  wire \rdata[1]_i_3_n_0 ;
  wire \rdata[1]_i_4_n_0 ;
  wire \rdata[31]_i_3_n_0 ;
  wire \rdata[31]_i_4_n_0 ;
  wire \rdata[9]_i_2_n_0 ;
  wire [4:0]s_axi_control_ARADDR;
  wire s_axi_control_ARVALID;
  wire [4:0]s_axi_control_AWADDR;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [31:0]s_axi_control_RDATA;
  wire s_axi_control_RREADY;
  wire s_axi_control_RVALID;
  wire [31:0]s_axi_control_WDATA;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire task_ap_done;
  wire waddr;
  wire \waddr_reg_n_0_[0] ;
  wire \waddr_reg_n_0_[1] ;
  wire \waddr_reg_n_0_[2] ;
  wire \waddr_reg_n_0_[3] ;
  wire \waddr_reg_n_0_[4] ;
  wire [3:0]\NLW_icmp_ln178_reg_76_reg[0]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_icmp_ln178_reg_76_reg[0]_i_11_O_UNCONNECTED ;
  wire [3:0]\NLW_icmp_ln178_reg_76_reg[0]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_icmp_ln178_reg_76_reg[0]_i_20_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \B_V_data_1_state[1]_i_1__0 
       (.I0(ap_rst_n),
        .O(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8BFB)) 
    \FSM_onehot_rstate[1]_i_1 
       (.I0(s_axi_control_RREADY),
        .I1(s_axi_control_RVALID),
        .I2(\FSM_onehot_rstate_reg[1]_0 ),
        .I3(s_axi_control_ARVALID),
        .O(\FSM_onehot_rstate[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_rstate[2]_i_1 
       (.I0(s_axi_control_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .I2(s_axi_control_RREADY),
        .I3(s_axi_control_RVALID),
        .O(\FSM_onehot_rstate[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[1]_i_1_n_0 ),
        .Q(\FSM_onehot_rstate_reg[1]_0 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[2]_i_1_n_0 ),
        .Q(s_axi_control_RVALID),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFF474447)) 
    \FSM_onehot_wstate[1]_i_1 
       (.I0(s_axi_control_AWVALID),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .I2(\FSM_onehot_wstate_reg[2]_0 ),
        .I3(s_axi_control_BVALID),
        .I4(s_axi_control_BREADY),
        .O(\FSM_onehot_wstate[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_wstate[2]_i_1 
       (.I0(s_axi_control_WVALID),
        .I1(\FSM_onehot_wstate_reg[2]_0 ),
        .I2(s_axi_control_AWVALID),
        .I3(\FSM_onehot_wstate_reg[1]_0 ),
        .O(\FSM_onehot_wstate[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_wstate[3]_i_1 
       (.I0(s_axi_control_WVALID),
        .I1(\FSM_onehot_wstate_reg[2]_0 ),
        .I2(s_axi_control_BREADY),
        .I3(s_axi_control_BVALID),
        .O(\FSM_onehot_wstate[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[1]_i_1_n_0 ),
        .Q(\FSM_onehot_wstate_reg[1]_0 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[2]_i_1_n_0 ),
        .Q(\FSM_onehot_wstate_reg[2]_0 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[3]_i_1_n_0 ),
        .Q(s_axi_control_BVALID),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(CO),
        .I1(Q[0]),
        .I2(ap_start),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFF8F888888)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(\ap_CS_fsm_reg[2] ),
        .I1(Q[2]),
        .I2(CO),
        .I3(Q[0]),
        .I4(ap_start),
        .I5(Q[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hEFAA)) 
    auto_restart_status_i_1
       (.I0(p_2_in[7]),
        .I1(ap_start),
        .I2(Q[0]),
        .I3(auto_restart_status_reg_n_0),
        .O(auto_restart_status_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    auto_restart_status_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(auto_restart_status_i_1_n_0),
        .Q(auto_restart_status_reg_n_0),
        .R(ap_rst_n_inv));
  LUT2 #(
    .INIT(4'h1)) 
    \icmp_ln178_reg_76[0]_i_10 
       (.I0(\int_num_samples_reg[30]_0 [25]),
        .I1(\int_num_samples_reg[30]_0 [24]),
        .O(\icmp_ln178_reg_76[0]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \icmp_ln178_reg_76[0]_i_12 
       (.I0(\int_num_samples_reg[30]_0 [22]),
        .I1(\int_num_samples_reg[30]_0 [23]),
        .O(\icmp_ln178_reg_76[0]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \icmp_ln178_reg_76[0]_i_13 
       (.I0(\int_num_samples_reg[30]_0 [20]),
        .I1(\int_num_samples_reg[30]_0 [21]),
        .O(\icmp_ln178_reg_76[0]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \icmp_ln178_reg_76[0]_i_14 
       (.I0(\int_num_samples_reg[30]_0 [18]),
        .I1(\int_num_samples_reg[30]_0 [19]),
        .O(\icmp_ln178_reg_76[0]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \icmp_ln178_reg_76[0]_i_15 
       (.I0(\int_num_samples_reg[30]_0 [16]),
        .I1(\int_num_samples_reg[30]_0 [17]),
        .O(\icmp_ln178_reg_76[0]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \icmp_ln178_reg_76[0]_i_16 
       (.I0(\int_num_samples_reg[30]_0 [23]),
        .I1(\int_num_samples_reg[30]_0 [22]),
        .O(\icmp_ln178_reg_76[0]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \icmp_ln178_reg_76[0]_i_17 
       (.I0(\int_num_samples_reg[30]_0 [21]),
        .I1(\int_num_samples_reg[30]_0 [20]),
        .O(\icmp_ln178_reg_76[0]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \icmp_ln178_reg_76[0]_i_18 
       (.I0(\int_num_samples_reg[30]_0 [19]),
        .I1(\int_num_samples_reg[30]_0 [18]),
        .O(\icmp_ln178_reg_76[0]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \icmp_ln178_reg_76[0]_i_19 
       (.I0(\int_num_samples_reg[30]_0 [17]),
        .I1(\int_num_samples_reg[30]_0 [16]),
        .O(\icmp_ln178_reg_76[0]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \icmp_ln178_reg_76[0]_i_21 
       (.I0(\int_num_samples_reg[30]_0 [14]),
        .I1(\int_num_samples_reg[30]_0 [15]),
        .O(\icmp_ln178_reg_76[0]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \icmp_ln178_reg_76[0]_i_22 
       (.I0(\int_num_samples_reg[30]_0 [12]),
        .I1(\int_num_samples_reg[30]_0 [13]),
        .O(\icmp_ln178_reg_76[0]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \icmp_ln178_reg_76[0]_i_23 
       (.I0(\int_num_samples_reg[30]_0 [10]),
        .I1(\int_num_samples_reg[30]_0 [11]),
        .O(\icmp_ln178_reg_76[0]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \icmp_ln178_reg_76[0]_i_24 
       (.I0(\int_num_samples_reg[30]_0 [8]),
        .I1(\int_num_samples_reg[30]_0 [9]),
        .O(\icmp_ln178_reg_76[0]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \icmp_ln178_reg_76[0]_i_25 
       (.I0(\int_num_samples_reg[30]_0 [15]),
        .I1(\int_num_samples_reg[30]_0 [14]),
        .O(\icmp_ln178_reg_76[0]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \icmp_ln178_reg_76[0]_i_26 
       (.I0(\int_num_samples_reg[30]_0 [13]),
        .I1(\int_num_samples_reg[30]_0 [12]),
        .O(\icmp_ln178_reg_76[0]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \icmp_ln178_reg_76[0]_i_27 
       (.I0(\int_num_samples_reg[30]_0 [11]),
        .I1(\int_num_samples_reg[30]_0 [10]),
        .O(\icmp_ln178_reg_76[0]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \icmp_ln178_reg_76[0]_i_28 
       (.I0(\int_num_samples_reg[30]_0 [9]),
        .I1(\int_num_samples_reg[30]_0 [8]),
        .O(\icmp_ln178_reg_76[0]_i_28_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \icmp_ln178_reg_76[0]_i_29 
       (.I0(\int_num_samples_reg[30]_0 [6]),
        .I1(\int_num_samples_reg[30]_0 [7]),
        .O(\icmp_ln178_reg_76[0]_i_29_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \icmp_ln178_reg_76[0]_i_3 
       (.I0(\int_num_samples_reg[30]_0 [30]),
        .I1(\int_num_samples_reg_n_0_[31] ),
        .O(\icmp_ln178_reg_76[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \icmp_ln178_reg_76[0]_i_30 
       (.I0(\int_num_samples_reg[30]_0 [4]),
        .I1(\int_num_samples_reg[30]_0 [5]),
        .O(\icmp_ln178_reg_76[0]_i_30_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \icmp_ln178_reg_76[0]_i_31 
       (.I0(\int_num_samples_reg[30]_0 [2]),
        .I1(\int_num_samples_reg[30]_0 [3]),
        .O(\icmp_ln178_reg_76[0]_i_31_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \icmp_ln178_reg_76[0]_i_32 
       (.I0(\int_num_samples_reg[30]_0 [0]),
        .I1(\int_num_samples_reg[30]_0 [1]),
        .O(\icmp_ln178_reg_76[0]_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \icmp_ln178_reg_76[0]_i_33 
       (.I0(\int_num_samples_reg[30]_0 [7]),
        .I1(\int_num_samples_reg[30]_0 [6]),
        .O(\icmp_ln178_reg_76[0]_i_33_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \icmp_ln178_reg_76[0]_i_34 
       (.I0(\int_num_samples_reg[30]_0 [5]),
        .I1(\int_num_samples_reg[30]_0 [4]),
        .O(\icmp_ln178_reg_76[0]_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \icmp_ln178_reg_76[0]_i_35 
       (.I0(\int_num_samples_reg[30]_0 [3]),
        .I1(\int_num_samples_reg[30]_0 [2]),
        .O(\icmp_ln178_reg_76[0]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \icmp_ln178_reg_76[0]_i_36 
       (.I0(\int_num_samples_reg[30]_0 [1]),
        .I1(\int_num_samples_reg[30]_0 [0]),
        .O(\icmp_ln178_reg_76[0]_i_36_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \icmp_ln178_reg_76[0]_i_4 
       (.I0(\int_num_samples_reg[30]_0 [28]),
        .I1(\int_num_samples_reg[30]_0 [29]),
        .O(\icmp_ln178_reg_76[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \icmp_ln178_reg_76[0]_i_5 
       (.I0(\int_num_samples_reg[30]_0 [26]),
        .I1(\int_num_samples_reg[30]_0 [27]),
        .O(\icmp_ln178_reg_76[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \icmp_ln178_reg_76[0]_i_6 
       (.I0(\int_num_samples_reg[30]_0 [24]),
        .I1(\int_num_samples_reg[30]_0 [25]),
        .O(\icmp_ln178_reg_76[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \icmp_ln178_reg_76[0]_i_7 
       (.I0(\int_num_samples_reg_n_0_[31] ),
        .I1(\int_num_samples_reg[30]_0 [30]),
        .O(\icmp_ln178_reg_76[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \icmp_ln178_reg_76[0]_i_8 
       (.I0(\int_num_samples_reg[30]_0 [29]),
        .I1(\int_num_samples_reg[30]_0 [28]),
        .O(\icmp_ln178_reg_76[0]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \icmp_ln178_reg_76[0]_i_9 
       (.I0(\int_num_samples_reg[30]_0 [27]),
        .I1(\int_num_samples_reg[30]_0 [26]),
        .O(\icmp_ln178_reg_76[0]_i_9_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \icmp_ln178_reg_76_reg[0]_i_1 
       (.CI(\icmp_ln178_reg_76_reg[0]_i_2_n_0 ),
        .CO({CO,\icmp_ln178_reg_76_reg[0]_i_1_n_1 ,\icmp_ln178_reg_76_reg[0]_i_1_n_2 ,\icmp_ln178_reg_76_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\icmp_ln178_reg_76[0]_i_3_n_0 ,\icmp_ln178_reg_76[0]_i_4_n_0 ,\icmp_ln178_reg_76[0]_i_5_n_0 ,\icmp_ln178_reg_76[0]_i_6_n_0 }),
        .O(\NLW_icmp_ln178_reg_76_reg[0]_i_1_O_UNCONNECTED [3:0]),
        .S({\icmp_ln178_reg_76[0]_i_7_n_0 ,\icmp_ln178_reg_76[0]_i_8_n_0 ,\icmp_ln178_reg_76[0]_i_9_n_0 ,\icmp_ln178_reg_76[0]_i_10_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \icmp_ln178_reg_76_reg[0]_i_11 
       (.CI(\icmp_ln178_reg_76_reg[0]_i_20_n_0 ),
        .CO({\icmp_ln178_reg_76_reg[0]_i_11_n_0 ,\icmp_ln178_reg_76_reg[0]_i_11_n_1 ,\icmp_ln178_reg_76_reg[0]_i_11_n_2 ,\icmp_ln178_reg_76_reg[0]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\icmp_ln178_reg_76[0]_i_21_n_0 ,\icmp_ln178_reg_76[0]_i_22_n_0 ,\icmp_ln178_reg_76[0]_i_23_n_0 ,\icmp_ln178_reg_76[0]_i_24_n_0 }),
        .O(\NLW_icmp_ln178_reg_76_reg[0]_i_11_O_UNCONNECTED [3:0]),
        .S({\icmp_ln178_reg_76[0]_i_25_n_0 ,\icmp_ln178_reg_76[0]_i_26_n_0 ,\icmp_ln178_reg_76[0]_i_27_n_0 ,\icmp_ln178_reg_76[0]_i_28_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \icmp_ln178_reg_76_reg[0]_i_2 
       (.CI(\icmp_ln178_reg_76_reg[0]_i_11_n_0 ),
        .CO({\icmp_ln178_reg_76_reg[0]_i_2_n_0 ,\icmp_ln178_reg_76_reg[0]_i_2_n_1 ,\icmp_ln178_reg_76_reg[0]_i_2_n_2 ,\icmp_ln178_reg_76_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\icmp_ln178_reg_76[0]_i_12_n_0 ,\icmp_ln178_reg_76[0]_i_13_n_0 ,\icmp_ln178_reg_76[0]_i_14_n_0 ,\icmp_ln178_reg_76[0]_i_15_n_0 }),
        .O(\NLW_icmp_ln178_reg_76_reg[0]_i_2_O_UNCONNECTED [3:0]),
        .S({\icmp_ln178_reg_76[0]_i_16_n_0 ,\icmp_ln178_reg_76[0]_i_17_n_0 ,\icmp_ln178_reg_76[0]_i_18_n_0 ,\icmp_ln178_reg_76[0]_i_19_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \icmp_ln178_reg_76_reg[0]_i_20 
       (.CI(1'b0),
        .CO({\icmp_ln178_reg_76_reg[0]_i_20_n_0 ,\icmp_ln178_reg_76_reg[0]_i_20_n_1 ,\icmp_ln178_reg_76_reg[0]_i_20_n_2 ,\icmp_ln178_reg_76_reg[0]_i_20_n_3 }),
        .CYINIT(1'b0),
        .DI({\icmp_ln178_reg_76[0]_i_29_n_0 ,\icmp_ln178_reg_76[0]_i_30_n_0 ,\icmp_ln178_reg_76[0]_i_31_n_0 ,\icmp_ln178_reg_76[0]_i_32_n_0 }),
        .O(\NLW_icmp_ln178_reg_76_reg[0]_i_20_O_UNCONNECTED [3:0]),
        .S({\icmp_ln178_reg_76[0]_i_33_n_0 ,\icmp_ln178_reg_76[0]_i_34_n_0 ,\icmp_ln178_reg_76[0]_i_35_n_0 ,\icmp_ln178_reg_76[0]_i_36_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    int_ap_idle_i_1
       (.I0(Q[0]),
        .I1(ap_start),
        .O(ap_idle));
  FDRE int_ap_idle_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_idle),
        .Q(p_2_in[2]),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hBFBFBFFF000000FF)) 
    int_ap_ready_i_1
       (.I0(\rdata[9]_i_2_n_0 ),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .I2(s_axi_control_ARVALID),
        .I3(int_ap_start_reg_0),
        .I4(p_2_in[7]),
        .I5(int_ap_ready),
        .O(int_ap_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_ready_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_ready_i_1_n_0),
        .Q(int_ap_ready),
        .R(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'hFECE)) 
    int_ap_start_i_1
       (.I0(p_2_in[7]),
        .I1(int_ap_start5_out),
        .I2(int_ap_start_reg_0),
        .I3(ap_start),
        .O(int_ap_start_i_1_n_0));
  LUT5 #(
    .INIT(32'h00200000)) 
    int_ap_start_i_2
       (.I0(s_axi_control_WDATA[0]),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(s_axi_control_WSTRB[0]),
        .I3(\waddr_reg_n_0_[4] ),
        .I4(\int_num_samples[31]_i_3_n_0 ),
        .O(int_ap_start5_out));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_start_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_start_i_1_n_0),
        .Q(ap_start),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    int_auto_restart_i_1
       (.I0(s_axi_control_WDATA[7]),
        .I1(\int_num_samples[31]_i_3_n_0 ),
        .I2(\waddr_reg_n_0_[4] ),
        .I3(s_axi_control_WSTRB[0]),
        .I4(\waddr_reg_n_0_[3] ),
        .I5(p_2_in[7]),
        .O(int_auto_restart_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_auto_restart_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_auto_restart_i_1_n_0),
        .Q(p_2_in[7]),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    int_gie_i_1
       (.I0(s_axi_control_WDATA[0]),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(s_axi_control_WSTRB[0]),
        .I3(\waddr_reg_n_0_[3] ),
        .I4(int_gie_i_2_n_0),
        .I5(int_gie_reg_n_0),
        .O(int_gie_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFF7FFFF)) 
    int_gie_i_2
       (.I0(\FSM_onehot_wstate_reg[2]_0 ),
        .I1(s_axi_control_WVALID),
        .I2(\waddr_reg_n_0_[1] ),
        .I3(\waddr_reg_n_0_[0] ),
        .I4(\waddr_reg_n_0_[2] ),
        .O(int_gie_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_gie_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_gie_i_1_n_0),
        .Q(int_gie_reg_n_0),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \int_ier[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(\int_num_samples[31]_i_3_n_0 ),
        .I2(\waddr_reg_n_0_[4] ),
        .I3(s_axi_control_WSTRB[0]),
        .I4(\waddr_reg_n_0_[3] ),
        .I5(\int_ier_reg_n_0_[0] ),
        .O(\int_ier[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \int_ier[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(\int_num_samples[31]_i_3_n_0 ),
        .I2(\waddr_reg_n_0_[4] ),
        .I3(s_axi_control_WSTRB[0]),
        .I4(\waddr_reg_n_0_[3] ),
        .I5(p_0_in),
        .O(\int_ier[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_ier[0]_i_1_n_0 ),
        .Q(\int_ier_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_ier[1]_i_1_n_0 ),
        .Q(p_0_in),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'hA8)) 
    int_interrupt_i_1
       (.I0(int_gie_reg_n_0),
        .I1(\int_isr_reg_n_0_[1] ),
        .I2(\int_isr_reg_n_0_[0] ),
        .O(int_interrupt0));
  FDRE #(
    .INIT(1'b0)) 
    int_interrupt_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_interrupt0),
        .Q(interrupt),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h7F778F88)) 
    \int_isr[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(int_isr7_out),
        .I2(int_ap_start_reg_0),
        .I3(\int_ier_reg_n_0_[0] ),
        .I4(\int_isr_reg_n_0_[0] ),
        .O(\int_isr[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \int_isr[0]_i_2 
       (.I0(\waddr_reg_n_0_[4] ),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\waddr_reg_n_0_[3] ),
        .I3(int_gie_i_2_n_0),
        .O(int_isr7_out));
  LUT5 #(
    .INIT(32'h7F778F88)) 
    \int_isr[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(int_isr7_out),
        .I2(int_ap_start_reg_0),
        .I3(p_0_in),
        .I4(\int_isr_reg_n_0_[1] ),
        .O(\int_isr[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[0]_i_1_n_0 ),
        .Q(\int_isr_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[1]_i_1_n_0 ),
        .Q(\int_isr_reg_n_0_[1] ),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_clients[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_num_clients_reg_n_0_[0] ),
        .O(int_num_clients0[0]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_clients[10]_i_1 
       (.I0(s_axi_control_WDATA[10]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_num_clients_reg_n_0_[10] ),
        .O(int_num_clients0[10]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_clients[11]_i_1 
       (.I0(s_axi_control_WDATA[11]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_num_clients_reg_n_0_[11] ),
        .O(int_num_clients0[11]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_clients[12]_i_1 
       (.I0(s_axi_control_WDATA[12]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_num_clients_reg_n_0_[12] ),
        .O(int_num_clients0[12]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_clients[13]_i_1 
       (.I0(s_axi_control_WDATA[13]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_num_clients_reg_n_0_[13] ),
        .O(int_num_clients0[13]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_clients[14]_i_1 
       (.I0(s_axi_control_WDATA[14]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_num_clients_reg_n_0_[14] ),
        .O(int_num_clients0[14]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_clients[15]_i_1 
       (.I0(s_axi_control_WDATA[15]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_num_clients_reg_n_0_[15] ),
        .O(int_num_clients0[15]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_clients[16]_i_1 
       (.I0(s_axi_control_WDATA[16]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_num_clients_reg_n_0_[16] ),
        .O(int_num_clients0[16]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_clients[17]_i_1 
       (.I0(s_axi_control_WDATA[17]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_num_clients_reg_n_0_[17] ),
        .O(int_num_clients0[17]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_clients[18]_i_1 
       (.I0(s_axi_control_WDATA[18]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_num_clients_reg_n_0_[18] ),
        .O(int_num_clients0[18]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_clients[19]_i_1 
       (.I0(s_axi_control_WDATA[19]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_num_clients_reg_n_0_[19] ),
        .O(int_num_clients0[19]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_clients[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_num_clients_reg_n_0_[1] ),
        .O(int_num_clients0[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_clients[20]_i_1 
       (.I0(s_axi_control_WDATA[20]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_num_clients_reg_n_0_[20] ),
        .O(int_num_clients0[20]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_clients[21]_i_1 
       (.I0(s_axi_control_WDATA[21]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_num_clients_reg_n_0_[21] ),
        .O(int_num_clients0[21]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_clients[22]_i_1 
       (.I0(s_axi_control_WDATA[22]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_num_clients_reg_n_0_[22] ),
        .O(int_num_clients0[22]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_clients[23]_i_1 
       (.I0(s_axi_control_WDATA[23]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_num_clients_reg_n_0_[23] ),
        .O(int_num_clients0[23]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_clients[24]_i_1 
       (.I0(s_axi_control_WDATA[24]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_num_clients_reg_n_0_[24] ),
        .O(int_num_clients0[24]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_clients[25]_i_1 
       (.I0(s_axi_control_WDATA[25]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_num_clients_reg_n_0_[25] ),
        .O(int_num_clients0[25]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_clients[26]_i_1 
       (.I0(s_axi_control_WDATA[26]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_num_clients_reg_n_0_[26] ),
        .O(int_num_clients0[26]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_clients[27]_i_1 
       (.I0(s_axi_control_WDATA[27]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_num_clients_reg_n_0_[27] ),
        .O(int_num_clients0[27]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_clients[28]_i_1 
       (.I0(s_axi_control_WDATA[28]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_num_clients_reg_n_0_[28] ),
        .O(int_num_clients0[28]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_clients[29]_i_1 
       (.I0(s_axi_control_WDATA[29]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_num_clients_reg_n_0_[29] ),
        .O(int_num_clients0[29]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_clients[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_num_clients_reg_n_0_[2] ),
        .O(int_num_clients0[2]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_clients[30]_i_1 
       (.I0(s_axi_control_WDATA[30]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_num_clients_reg_n_0_[30] ),
        .O(int_num_clients0[30]));
  LUT3 #(
    .INIT(8'h80)) 
    \int_num_clients[31]_i_1 
       (.I0(\waddr_reg_n_0_[3] ),
        .I1(\int_num_samples[31]_i_3_n_0 ),
        .I2(\waddr_reg_n_0_[4] ),
        .O(\int_num_clients[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_clients[31]_i_2 
       (.I0(s_axi_control_WDATA[31]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_num_clients_reg_n_0_[31] ),
        .O(int_num_clients0[31]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_clients[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_num_clients_reg_n_0_[3] ),
        .O(int_num_clients0[3]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_clients[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_num_clients_reg_n_0_[4] ),
        .O(int_num_clients0[4]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_clients[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_num_clients_reg_n_0_[5] ),
        .O(int_num_clients0[5]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_clients[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_num_clients_reg_n_0_[6] ),
        .O(int_num_clients0[6]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_clients[7]_i_1 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_num_clients_reg_n_0_[7] ),
        .O(int_num_clients0[7]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_clients[8]_i_1 
       (.I0(s_axi_control_WDATA[8]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_num_clients_reg_n_0_[8] ),
        .O(int_num_clients0[8]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_clients[9]_i_1 
       (.I0(s_axi_control_WDATA[9]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_num_clients_reg_n_0_[9] ),
        .O(int_num_clients0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_clients_reg[0] 
       (.C(ap_clk),
        .CE(\int_num_clients[31]_i_1_n_0 ),
        .D(int_num_clients0[0]),
        .Q(\int_num_clients_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_clients_reg[10] 
       (.C(ap_clk),
        .CE(\int_num_clients[31]_i_1_n_0 ),
        .D(int_num_clients0[10]),
        .Q(\int_num_clients_reg_n_0_[10] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_clients_reg[11] 
       (.C(ap_clk),
        .CE(\int_num_clients[31]_i_1_n_0 ),
        .D(int_num_clients0[11]),
        .Q(\int_num_clients_reg_n_0_[11] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_clients_reg[12] 
       (.C(ap_clk),
        .CE(\int_num_clients[31]_i_1_n_0 ),
        .D(int_num_clients0[12]),
        .Q(\int_num_clients_reg_n_0_[12] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_clients_reg[13] 
       (.C(ap_clk),
        .CE(\int_num_clients[31]_i_1_n_0 ),
        .D(int_num_clients0[13]),
        .Q(\int_num_clients_reg_n_0_[13] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_clients_reg[14] 
       (.C(ap_clk),
        .CE(\int_num_clients[31]_i_1_n_0 ),
        .D(int_num_clients0[14]),
        .Q(\int_num_clients_reg_n_0_[14] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_clients_reg[15] 
       (.C(ap_clk),
        .CE(\int_num_clients[31]_i_1_n_0 ),
        .D(int_num_clients0[15]),
        .Q(\int_num_clients_reg_n_0_[15] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_clients_reg[16] 
       (.C(ap_clk),
        .CE(\int_num_clients[31]_i_1_n_0 ),
        .D(int_num_clients0[16]),
        .Q(\int_num_clients_reg_n_0_[16] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_clients_reg[17] 
       (.C(ap_clk),
        .CE(\int_num_clients[31]_i_1_n_0 ),
        .D(int_num_clients0[17]),
        .Q(\int_num_clients_reg_n_0_[17] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_clients_reg[18] 
       (.C(ap_clk),
        .CE(\int_num_clients[31]_i_1_n_0 ),
        .D(int_num_clients0[18]),
        .Q(\int_num_clients_reg_n_0_[18] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_clients_reg[19] 
       (.C(ap_clk),
        .CE(\int_num_clients[31]_i_1_n_0 ),
        .D(int_num_clients0[19]),
        .Q(\int_num_clients_reg_n_0_[19] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_clients_reg[1] 
       (.C(ap_clk),
        .CE(\int_num_clients[31]_i_1_n_0 ),
        .D(int_num_clients0[1]),
        .Q(\int_num_clients_reg_n_0_[1] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_clients_reg[20] 
       (.C(ap_clk),
        .CE(\int_num_clients[31]_i_1_n_0 ),
        .D(int_num_clients0[20]),
        .Q(\int_num_clients_reg_n_0_[20] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_clients_reg[21] 
       (.C(ap_clk),
        .CE(\int_num_clients[31]_i_1_n_0 ),
        .D(int_num_clients0[21]),
        .Q(\int_num_clients_reg_n_0_[21] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_clients_reg[22] 
       (.C(ap_clk),
        .CE(\int_num_clients[31]_i_1_n_0 ),
        .D(int_num_clients0[22]),
        .Q(\int_num_clients_reg_n_0_[22] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_clients_reg[23] 
       (.C(ap_clk),
        .CE(\int_num_clients[31]_i_1_n_0 ),
        .D(int_num_clients0[23]),
        .Q(\int_num_clients_reg_n_0_[23] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_clients_reg[24] 
       (.C(ap_clk),
        .CE(\int_num_clients[31]_i_1_n_0 ),
        .D(int_num_clients0[24]),
        .Q(\int_num_clients_reg_n_0_[24] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_clients_reg[25] 
       (.C(ap_clk),
        .CE(\int_num_clients[31]_i_1_n_0 ),
        .D(int_num_clients0[25]),
        .Q(\int_num_clients_reg_n_0_[25] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_clients_reg[26] 
       (.C(ap_clk),
        .CE(\int_num_clients[31]_i_1_n_0 ),
        .D(int_num_clients0[26]),
        .Q(\int_num_clients_reg_n_0_[26] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_clients_reg[27] 
       (.C(ap_clk),
        .CE(\int_num_clients[31]_i_1_n_0 ),
        .D(int_num_clients0[27]),
        .Q(\int_num_clients_reg_n_0_[27] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_clients_reg[28] 
       (.C(ap_clk),
        .CE(\int_num_clients[31]_i_1_n_0 ),
        .D(int_num_clients0[28]),
        .Q(\int_num_clients_reg_n_0_[28] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_clients_reg[29] 
       (.C(ap_clk),
        .CE(\int_num_clients[31]_i_1_n_0 ),
        .D(int_num_clients0[29]),
        .Q(\int_num_clients_reg_n_0_[29] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_clients_reg[2] 
       (.C(ap_clk),
        .CE(\int_num_clients[31]_i_1_n_0 ),
        .D(int_num_clients0[2]),
        .Q(\int_num_clients_reg_n_0_[2] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_clients_reg[30] 
       (.C(ap_clk),
        .CE(\int_num_clients[31]_i_1_n_0 ),
        .D(int_num_clients0[30]),
        .Q(\int_num_clients_reg_n_0_[30] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_clients_reg[31] 
       (.C(ap_clk),
        .CE(\int_num_clients[31]_i_1_n_0 ),
        .D(int_num_clients0[31]),
        .Q(\int_num_clients_reg_n_0_[31] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_clients_reg[3] 
       (.C(ap_clk),
        .CE(\int_num_clients[31]_i_1_n_0 ),
        .D(int_num_clients0[3]),
        .Q(\int_num_clients_reg_n_0_[3] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_clients_reg[4] 
       (.C(ap_clk),
        .CE(\int_num_clients[31]_i_1_n_0 ),
        .D(int_num_clients0[4]),
        .Q(\int_num_clients_reg_n_0_[4] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_clients_reg[5] 
       (.C(ap_clk),
        .CE(\int_num_clients[31]_i_1_n_0 ),
        .D(int_num_clients0[5]),
        .Q(\int_num_clients_reg_n_0_[5] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_clients_reg[6] 
       (.C(ap_clk),
        .CE(\int_num_clients[31]_i_1_n_0 ),
        .D(int_num_clients0[6]),
        .Q(\int_num_clients_reg_n_0_[6] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_clients_reg[7] 
       (.C(ap_clk),
        .CE(\int_num_clients[31]_i_1_n_0 ),
        .D(int_num_clients0[7]),
        .Q(\int_num_clients_reg_n_0_[7] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_clients_reg[8] 
       (.C(ap_clk),
        .CE(\int_num_clients[31]_i_1_n_0 ),
        .D(int_num_clients0[8]),
        .Q(\int_num_clients_reg_n_0_[8] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_clients_reg[9] 
       (.C(ap_clk),
        .CE(\int_num_clients[31]_i_1_n_0 ),
        .D(int_num_clients0[9]),
        .Q(\int_num_clients_reg_n_0_[9] ),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_samples[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_num_samples_reg[30]_0 [0]),
        .O(int_num_samples0[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_samples[10]_i_1 
       (.I0(s_axi_control_WDATA[10]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_num_samples_reg[30]_0 [10]),
        .O(int_num_samples0[10]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_samples[11]_i_1 
       (.I0(s_axi_control_WDATA[11]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_num_samples_reg[30]_0 [11]),
        .O(int_num_samples0[11]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_samples[12]_i_1 
       (.I0(s_axi_control_WDATA[12]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_num_samples_reg[30]_0 [12]),
        .O(int_num_samples0[12]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_samples[13]_i_1 
       (.I0(s_axi_control_WDATA[13]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_num_samples_reg[30]_0 [13]),
        .O(int_num_samples0[13]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_samples[14]_i_1 
       (.I0(s_axi_control_WDATA[14]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_num_samples_reg[30]_0 [14]),
        .O(int_num_samples0[14]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_samples[15]_i_1 
       (.I0(s_axi_control_WDATA[15]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_num_samples_reg[30]_0 [15]),
        .O(int_num_samples0[15]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_samples[16]_i_1 
       (.I0(s_axi_control_WDATA[16]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_num_samples_reg[30]_0 [16]),
        .O(int_num_samples0[16]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_samples[17]_i_1 
       (.I0(s_axi_control_WDATA[17]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_num_samples_reg[30]_0 [17]),
        .O(int_num_samples0[17]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_samples[18]_i_1 
       (.I0(s_axi_control_WDATA[18]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_num_samples_reg[30]_0 [18]),
        .O(int_num_samples0[18]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_samples[19]_i_1 
       (.I0(s_axi_control_WDATA[19]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_num_samples_reg[30]_0 [19]),
        .O(int_num_samples0[19]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_samples[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_num_samples_reg[30]_0 [1]),
        .O(int_num_samples0[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_samples[20]_i_1 
       (.I0(s_axi_control_WDATA[20]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_num_samples_reg[30]_0 [20]),
        .O(int_num_samples0[20]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_samples[21]_i_1 
       (.I0(s_axi_control_WDATA[21]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_num_samples_reg[30]_0 [21]),
        .O(int_num_samples0[21]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_samples[22]_i_1 
       (.I0(s_axi_control_WDATA[22]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_num_samples_reg[30]_0 [22]),
        .O(int_num_samples0[22]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_samples[23]_i_1 
       (.I0(s_axi_control_WDATA[23]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_num_samples_reg[30]_0 [23]),
        .O(int_num_samples0[23]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_samples[24]_i_1 
       (.I0(s_axi_control_WDATA[24]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_num_samples_reg[30]_0 [24]),
        .O(int_num_samples0[24]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_samples[25]_i_1 
       (.I0(s_axi_control_WDATA[25]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_num_samples_reg[30]_0 [25]),
        .O(int_num_samples0[25]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_samples[26]_i_1 
       (.I0(s_axi_control_WDATA[26]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_num_samples_reg[30]_0 [26]),
        .O(int_num_samples0[26]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_samples[27]_i_1 
       (.I0(s_axi_control_WDATA[27]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_num_samples_reg[30]_0 [27]),
        .O(int_num_samples0[27]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_samples[28]_i_1 
       (.I0(s_axi_control_WDATA[28]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_num_samples_reg[30]_0 [28]),
        .O(int_num_samples0[28]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_samples[29]_i_1 
       (.I0(s_axi_control_WDATA[29]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_num_samples_reg[30]_0 [29]),
        .O(int_num_samples0[29]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_samples[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_num_samples_reg[30]_0 [2]),
        .O(int_num_samples0[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_samples[30]_i_1 
       (.I0(s_axi_control_WDATA[30]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_num_samples_reg[30]_0 [30]),
        .O(int_num_samples0[30]));
  LUT3 #(
    .INIT(8'h40)) 
    \int_num_samples[31]_i_1 
       (.I0(\waddr_reg_n_0_[3] ),
        .I1(\int_num_samples[31]_i_3_n_0 ),
        .I2(\waddr_reg_n_0_[4] ),
        .O(\int_num_samples[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_samples[31]_i_2 
       (.I0(s_axi_control_WDATA[31]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_num_samples_reg_n_0_[31] ),
        .O(int_num_samples0[31]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \int_num_samples[31]_i_3 
       (.I0(\waddr_reg_n_0_[2] ),
        .I1(\FSM_onehot_wstate_reg[2]_0 ),
        .I2(s_axi_control_WVALID),
        .I3(\waddr_reg_n_0_[1] ),
        .I4(\waddr_reg_n_0_[0] ),
        .O(\int_num_samples[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_samples[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_num_samples_reg[30]_0 [3]),
        .O(int_num_samples0[3]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_samples[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_num_samples_reg[30]_0 [4]),
        .O(int_num_samples0[4]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_samples[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_num_samples_reg[30]_0 [5]),
        .O(int_num_samples0[5]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_samples[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_num_samples_reg[30]_0 [6]),
        .O(int_num_samples0[6]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_samples[7]_i_1 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_num_samples_reg[30]_0 [7]),
        .O(int_num_samples0[7]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_samples[8]_i_1 
       (.I0(s_axi_control_WDATA[8]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_num_samples_reg[30]_0 [8]),
        .O(int_num_samples0[8]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_num_samples[9]_i_1 
       (.I0(s_axi_control_WDATA[9]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_num_samples_reg[30]_0 [9]),
        .O(int_num_samples0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_samples_reg[0] 
       (.C(ap_clk),
        .CE(\int_num_samples[31]_i_1_n_0 ),
        .D(int_num_samples0[0]),
        .Q(\int_num_samples_reg[30]_0 [0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_samples_reg[10] 
       (.C(ap_clk),
        .CE(\int_num_samples[31]_i_1_n_0 ),
        .D(int_num_samples0[10]),
        .Q(\int_num_samples_reg[30]_0 [10]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_samples_reg[11] 
       (.C(ap_clk),
        .CE(\int_num_samples[31]_i_1_n_0 ),
        .D(int_num_samples0[11]),
        .Q(\int_num_samples_reg[30]_0 [11]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_samples_reg[12] 
       (.C(ap_clk),
        .CE(\int_num_samples[31]_i_1_n_0 ),
        .D(int_num_samples0[12]),
        .Q(\int_num_samples_reg[30]_0 [12]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_samples_reg[13] 
       (.C(ap_clk),
        .CE(\int_num_samples[31]_i_1_n_0 ),
        .D(int_num_samples0[13]),
        .Q(\int_num_samples_reg[30]_0 [13]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_samples_reg[14] 
       (.C(ap_clk),
        .CE(\int_num_samples[31]_i_1_n_0 ),
        .D(int_num_samples0[14]),
        .Q(\int_num_samples_reg[30]_0 [14]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_samples_reg[15] 
       (.C(ap_clk),
        .CE(\int_num_samples[31]_i_1_n_0 ),
        .D(int_num_samples0[15]),
        .Q(\int_num_samples_reg[30]_0 [15]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_samples_reg[16] 
       (.C(ap_clk),
        .CE(\int_num_samples[31]_i_1_n_0 ),
        .D(int_num_samples0[16]),
        .Q(\int_num_samples_reg[30]_0 [16]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_samples_reg[17] 
       (.C(ap_clk),
        .CE(\int_num_samples[31]_i_1_n_0 ),
        .D(int_num_samples0[17]),
        .Q(\int_num_samples_reg[30]_0 [17]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_samples_reg[18] 
       (.C(ap_clk),
        .CE(\int_num_samples[31]_i_1_n_0 ),
        .D(int_num_samples0[18]),
        .Q(\int_num_samples_reg[30]_0 [18]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_samples_reg[19] 
       (.C(ap_clk),
        .CE(\int_num_samples[31]_i_1_n_0 ),
        .D(int_num_samples0[19]),
        .Q(\int_num_samples_reg[30]_0 [19]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_samples_reg[1] 
       (.C(ap_clk),
        .CE(\int_num_samples[31]_i_1_n_0 ),
        .D(int_num_samples0[1]),
        .Q(\int_num_samples_reg[30]_0 [1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_samples_reg[20] 
       (.C(ap_clk),
        .CE(\int_num_samples[31]_i_1_n_0 ),
        .D(int_num_samples0[20]),
        .Q(\int_num_samples_reg[30]_0 [20]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_samples_reg[21] 
       (.C(ap_clk),
        .CE(\int_num_samples[31]_i_1_n_0 ),
        .D(int_num_samples0[21]),
        .Q(\int_num_samples_reg[30]_0 [21]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_samples_reg[22] 
       (.C(ap_clk),
        .CE(\int_num_samples[31]_i_1_n_0 ),
        .D(int_num_samples0[22]),
        .Q(\int_num_samples_reg[30]_0 [22]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_samples_reg[23] 
       (.C(ap_clk),
        .CE(\int_num_samples[31]_i_1_n_0 ),
        .D(int_num_samples0[23]),
        .Q(\int_num_samples_reg[30]_0 [23]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_samples_reg[24] 
       (.C(ap_clk),
        .CE(\int_num_samples[31]_i_1_n_0 ),
        .D(int_num_samples0[24]),
        .Q(\int_num_samples_reg[30]_0 [24]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_samples_reg[25] 
       (.C(ap_clk),
        .CE(\int_num_samples[31]_i_1_n_0 ),
        .D(int_num_samples0[25]),
        .Q(\int_num_samples_reg[30]_0 [25]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_samples_reg[26] 
       (.C(ap_clk),
        .CE(\int_num_samples[31]_i_1_n_0 ),
        .D(int_num_samples0[26]),
        .Q(\int_num_samples_reg[30]_0 [26]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_samples_reg[27] 
       (.C(ap_clk),
        .CE(\int_num_samples[31]_i_1_n_0 ),
        .D(int_num_samples0[27]),
        .Q(\int_num_samples_reg[30]_0 [27]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_samples_reg[28] 
       (.C(ap_clk),
        .CE(\int_num_samples[31]_i_1_n_0 ),
        .D(int_num_samples0[28]),
        .Q(\int_num_samples_reg[30]_0 [28]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_samples_reg[29] 
       (.C(ap_clk),
        .CE(\int_num_samples[31]_i_1_n_0 ),
        .D(int_num_samples0[29]),
        .Q(\int_num_samples_reg[30]_0 [29]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_samples_reg[2] 
       (.C(ap_clk),
        .CE(\int_num_samples[31]_i_1_n_0 ),
        .D(int_num_samples0[2]),
        .Q(\int_num_samples_reg[30]_0 [2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_samples_reg[30] 
       (.C(ap_clk),
        .CE(\int_num_samples[31]_i_1_n_0 ),
        .D(int_num_samples0[30]),
        .Q(\int_num_samples_reg[30]_0 [30]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_samples_reg[31] 
       (.C(ap_clk),
        .CE(\int_num_samples[31]_i_1_n_0 ),
        .D(int_num_samples0[31]),
        .Q(\int_num_samples_reg_n_0_[31] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_samples_reg[3] 
       (.C(ap_clk),
        .CE(\int_num_samples[31]_i_1_n_0 ),
        .D(int_num_samples0[3]),
        .Q(\int_num_samples_reg[30]_0 [3]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_samples_reg[4] 
       (.C(ap_clk),
        .CE(\int_num_samples[31]_i_1_n_0 ),
        .D(int_num_samples0[4]),
        .Q(\int_num_samples_reg[30]_0 [4]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_samples_reg[5] 
       (.C(ap_clk),
        .CE(\int_num_samples[31]_i_1_n_0 ),
        .D(int_num_samples0[5]),
        .Q(\int_num_samples_reg[30]_0 [5]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_samples_reg[6] 
       (.C(ap_clk),
        .CE(\int_num_samples[31]_i_1_n_0 ),
        .D(int_num_samples0[6]),
        .Q(\int_num_samples_reg[30]_0 [6]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_samples_reg[7] 
       (.C(ap_clk),
        .CE(\int_num_samples[31]_i_1_n_0 ),
        .D(int_num_samples0[7]),
        .Q(\int_num_samples_reg[30]_0 [7]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_samples_reg[8] 
       (.C(ap_clk),
        .CE(\int_num_samples[31]_i_1_n_0 ),
        .D(int_num_samples0[8]),
        .Q(\int_num_samples_reg[30]_0 [8]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_samples_reg[9] 
       (.C(ap_clk),
        .CE(\int_num_samples[31]_i_1_n_0 ),
        .D(int_num_samples0[9]),
        .Q(\int_num_samples_reg[30]_0 [9]),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFFBFFF00)) 
    int_task_ap_done_i_1
       (.I0(\rdata[9]_i_2_n_0 ),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .I2(s_axi_control_ARVALID),
        .I3(task_ap_done),
        .I4(int_task_ap_done),
        .O(int_task_ap_done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h040400FF)) 
    int_task_ap_done_i_2
       (.I0(p_2_in[2]),
        .I1(Q[0]),
        .I2(ap_start),
        .I3(int_ap_start_reg_0),
        .I4(auto_restart_status_reg_n_0),
        .O(task_ap_done));
  FDRE #(
    .INIT(1'b0)) 
    int_task_ap_done_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_task_ap_done_i_1_n_0),
        .Q(int_task_ap_done),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hF4F4FFF4)) 
    \rdata[0]_i_1 
       (.I0(\rdata[31]_i_4_n_0 ),
        .I1(\int_num_clients_reg_n_0_[0] ),
        .I2(\rdata[0]_i_2_n_0 ),
        .I3(\int_num_samples_reg[30]_0 [0]),
        .I4(\rdata[31]_i_3_n_0 ),
        .O(rdata[0]));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \rdata[0]_i_2 
       (.I0(\rdata[1]_i_3_n_0 ),
        .I1(\int_isr_reg_n_0_[0] ),
        .I2(s_axi_control_ARADDR[3]),
        .I3(int_gie_reg_n_0),
        .I4(\rdata[1]_i_2_n_0 ),
        .I5(\rdata[0]_i_3_n_0 ),
        .O(\rdata[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata[0]_i_3 
       (.I0(\int_ier_reg_n_0_[0] ),
        .I1(s_axi_control_ARADDR[3]),
        .I2(ap_start),
        .O(\rdata[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \rdata[10]_i_1 
       (.I0(\rdata[31]_i_3_n_0 ),
        .I1(\int_num_samples_reg[30]_0 [10]),
        .I2(\rdata[31]_i_4_n_0 ),
        .I3(\int_num_clients_reg_n_0_[10] ),
        .O(rdata[10]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \rdata[11]_i_1 
       (.I0(\rdata[31]_i_3_n_0 ),
        .I1(\int_num_samples_reg[30]_0 [11]),
        .I2(\rdata[31]_i_4_n_0 ),
        .I3(\int_num_clients_reg_n_0_[11] ),
        .O(rdata[11]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \rdata[12]_i_1 
       (.I0(\rdata[31]_i_3_n_0 ),
        .I1(\int_num_samples_reg[30]_0 [12]),
        .I2(\rdata[31]_i_4_n_0 ),
        .I3(\int_num_clients_reg_n_0_[12] ),
        .O(rdata[12]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \rdata[13]_i_1 
       (.I0(\rdata[31]_i_3_n_0 ),
        .I1(\int_num_samples_reg[30]_0 [13]),
        .I2(\rdata[31]_i_4_n_0 ),
        .I3(\int_num_clients_reg_n_0_[13] ),
        .O(rdata[13]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \rdata[14]_i_1 
       (.I0(\rdata[31]_i_3_n_0 ),
        .I1(\int_num_samples_reg[30]_0 [14]),
        .I2(\rdata[31]_i_4_n_0 ),
        .I3(\int_num_clients_reg_n_0_[14] ),
        .O(rdata[14]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \rdata[15]_i_1 
       (.I0(\rdata[31]_i_3_n_0 ),
        .I1(\int_num_samples_reg[30]_0 [15]),
        .I2(\rdata[31]_i_4_n_0 ),
        .I3(\int_num_clients_reg_n_0_[15] ),
        .O(rdata[15]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \rdata[16]_i_1 
       (.I0(\rdata[31]_i_3_n_0 ),
        .I1(\int_num_samples_reg[30]_0 [16]),
        .I2(\rdata[31]_i_4_n_0 ),
        .I3(\int_num_clients_reg_n_0_[16] ),
        .O(rdata[16]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \rdata[17]_i_1 
       (.I0(\rdata[31]_i_3_n_0 ),
        .I1(\int_num_samples_reg[30]_0 [17]),
        .I2(\rdata[31]_i_4_n_0 ),
        .I3(\int_num_clients_reg_n_0_[17] ),
        .O(rdata[17]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \rdata[18]_i_1 
       (.I0(\rdata[31]_i_3_n_0 ),
        .I1(\int_num_samples_reg[30]_0 [18]),
        .I2(\rdata[31]_i_4_n_0 ),
        .I3(\int_num_clients_reg_n_0_[18] ),
        .O(rdata[18]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \rdata[19]_i_1 
       (.I0(\rdata[31]_i_3_n_0 ),
        .I1(\int_num_samples_reg[30]_0 [19]),
        .I2(\rdata[31]_i_4_n_0 ),
        .I3(\int_num_clients_reg_n_0_[19] ),
        .O(rdata[19]));
  LUT6 #(
    .INIT(64'hFFFFFFFF2F220000)) 
    \rdata[1]_i_1 
       (.I0(p_0_in),
        .I1(\rdata[1]_i_2_n_0 ),
        .I2(\rdata[1]_i_3_n_0 ),
        .I3(\int_isr_reg_n_0_[1] ),
        .I4(s_axi_control_ARADDR[3]),
        .I5(\rdata[1]_i_4_n_0 ),
        .O(rdata[1]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rdata[1]_i_2 
       (.I0(s_axi_control_ARADDR[4]),
        .I1(s_axi_control_ARADDR[1]),
        .I2(s_axi_control_ARADDR[0]),
        .I3(s_axi_control_ARADDR[2]),
        .O(\rdata[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \rdata[1]_i_3 
       (.I0(s_axi_control_ARADDR[0]),
        .I1(s_axi_control_ARADDR[1]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[4]),
        .O(\rdata[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \rdata[1]_i_4 
       (.I0(\rdata[31]_i_4_n_0 ),
        .I1(\int_num_clients_reg_n_0_[1] ),
        .I2(int_task_ap_done),
        .I3(\rdata[9]_i_2_n_0 ),
        .I4(\int_num_samples_reg[30]_0 [1]),
        .I5(\rdata[31]_i_3_n_0 ),
        .O(\rdata[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \rdata[20]_i_1 
       (.I0(\rdata[31]_i_3_n_0 ),
        .I1(\int_num_samples_reg[30]_0 [20]),
        .I2(\rdata[31]_i_4_n_0 ),
        .I3(\int_num_clients_reg_n_0_[20] ),
        .O(rdata[20]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \rdata[21]_i_1 
       (.I0(\rdata[31]_i_3_n_0 ),
        .I1(\int_num_samples_reg[30]_0 [21]),
        .I2(\rdata[31]_i_4_n_0 ),
        .I3(\int_num_clients_reg_n_0_[21] ),
        .O(rdata[21]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \rdata[22]_i_1 
       (.I0(\rdata[31]_i_3_n_0 ),
        .I1(\int_num_samples_reg[30]_0 [22]),
        .I2(\rdata[31]_i_4_n_0 ),
        .I3(\int_num_clients_reg_n_0_[22] ),
        .O(rdata[22]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \rdata[23]_i_1 
       (.I0(\rdata[31]_i_3_n_0 ),
        .I1(\int_num_samples_reg[30]_0 [23]),
        .I2(\rdata[31]_i_4_n_0 ),
        .I3(\int_num_clients_reg_n_0_[23] ),
        .O(rdata[23]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \rdata[24]_i_1 
       (.I0(\rdata[31]_i_3_n_0 ),
        .I1(\int_num_samples_reg[30]_0 [24]),
        .I2(\rdata[31]_i_4_n_0 ),
        .I3(\int_num_clients_reg_n_0_[24] ),
        .O(rdata[24]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \rdata[25]_i_1 
       (.I0(\rdata[31]_i_3_n_0 ),
        .I1(\int_num_samples_reg[30]_0 [25]),
        .I2(\rdata[31]_i_4_n_0 ),
        .I3(\int_num_clients_reg_n_0_[25] ),
        .O(rdata[25]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \rdata[26]_i_1 
       (.I0(\rdata[31]_i_3_n_0 ),
        .I1(\int_num_samples_reg[30]_0 [26]),
        .I2(\rdata[31]_i_4_n_0 ),
        .I3(\int_num_clients_reg_n_0_[26] ),
        .O(rdata[26]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \rdata[27]_i_1 
       (.I0(\rdata[31]_i_3_n_0 ),
        .I1(\int_num_samples_reg[30]_0 [27]),
        .I2(\rdata[31]_i_4_n_0 ),
        .I3(\int_num_clients_reg_n_0_[27] ),
        .O(rdata[27]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \rdata[28]_i_1 
       (.I0(\rdata[31]_i_3_n_0 ),
        .I1(\int_num_samples_reg[30]_0 [28]),
        .I2(\rdata[31]_i_4_n_0 ),
        .I3(\int_num_clients_reg_n_0_[28] ),
        .O(rdata[28]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \rdata[29]_i_1 
       (.I0(\rdata[31]_i_3_n_0 ),
        .I1(\int_num_samples_reg[30]_0 [29]),
        .I2(\rdata[31]_i_4_n_0 ),
        .I3(\int_num_clients_reg_n_0_[29] ),
        .O(rdata[29]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \rdata[2]_i_1 
       (.I0(\rdata[31]_i_3_n_0 ),
        .I1(\int_num_samples_reg[30]_0 [2]),
        .I2(\int_num_clients_reg_n_0_[2] ),
        .I3(\rdata[31]_i_4_n_0 ),
        .I4(p_2_in[2]),
        .I5(\rdata[9]_i_2_n_0 ),
        .O(rdata[2]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \rdata[30]_i_1 
       (.I0(\rdata[31]_i_3_n_0 ),
        .I1(\int_num_samples_reg[30]_0 [30]),
        .I2(\rdata[31]_i_4_n_0 ),
        .I3(\int_num_clients_reg_n_0_[30] ),
        .O(rdata[30]));
  LUT2 #(
    .INIT(4'h8)) 
    \rdata[31]_i_1 
       (.I0(\FSM_onehot_rstate_reg[1]_0 ),
        .I1(s_axi_control_ARVALID),
        .O(ar_hs));
  LUT4 #(
    .INIT(16'h4F44)) 
    \rdata[31]_i_2 
       (.I0(\rdata[31]_i_3_n_0 ),
        .I1(\int_num_samples_reg_n_0_[31] ),
        .I2(\rdata[31]_i_4_n_0 ),
        .I3(\int_num_clients_reg_n_0_[31] ),
        .O(rdata[31]));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \rdata[31]_i_3 
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[0]),
        .I4(s_axi_control_ARADDR[1]),
        .O(\rdata[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFDFFFF)) 
    \rdata[31]_i_4 
       (.I0(s_axi_control_ARADDR[4]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(s_axi_control_ARADDR[0]),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[3]),
        .O(\rdata[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \rdata[3]_i_1 
       (.I0(\rdata[31]_i_3_n_0 ),
        .I1(\int_num_samples_reg[30]_0 [3]),
        .I2(int_ap_ready),
        .I3(\rdata[9]_i_2_n_0 ),
        .I4(\int_num_clients_reg_n_0_[3] ),
        .I5(\rdata[31]_i_4_n_0 ),
        .O(rdata[3]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \rdata[4]_i_1 
       (.I0(\rdata[31]_i_3_n_0 ),
        .I1(\int_num_samples_reg[30]_0 [4]),
        .I2(\rdata[31]_i_4_n_0 ),
        .I3(\int_num_clients_reg_n_0_[4] ),
        .O(rdata[4]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \rdata[5]_i_1 
       (.I0(\rdata[31]_i_3_n_0 ),
        .I1(\int_num_samples_reg[30]_0 [5]),
        .I2(\rdata[31]_i_4_n_0 ),
        .I3(\int_num_clients_reg_n_0_[5] ),
        .O(rdata[5]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \rdata[6]_i_1 
       (.I0(\rdata[31]_i_3_n_0 ),
        .I1(\int_num_samples_reg[30]_0 [6]),
        .I2(\rdata[31]_i_4_n_0 ),
        .I3(\int_num_clients_reg_n_0_[6] ),
        .O(rdata[6]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \rdata[7]_i_1 
       (.I0(\rdata[31]_i_4_n_0 ),
        .I1(\int_num_clients_reg_n_0_[7] ),
        .I2(\int_num_samples_reg[30]_0 [7]),
        .I3(\rdata[31]_i_3_n_0 ),
        .I4(p_2_in[7]),
        .I5(\rdata[9]_i_2_n_0 ),
        .O(rdata[7]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \rdata[8]_i_1 
       (.I0(\rdata[31]_i_3_n_0 ),
        .I1(\int_num_samples_reg[30]_0 [8]),
        .I2(\rdata[31]_i_4_n_0 ),
        .I3(\int_num_clients_reg_n_0_[8] ),
        .O(rdata[8]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \rdata[9]_i_1 
       (.I0(\rdata[9]_i_2_n_0 ),
        .I1(interrupt),
        .I2(\int_num_samples_reg[30]_0 [9]),
        .I3(\rdata[31]_i_3_n_0 ),
        .I4(\int_num_clients_reg_n_0_[9] ),
        .I5(\rdata[31]_i_4_n_0 ),
        .O(rdata[9]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \rdata[9]_i_2 
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(s_axi_control_ARADDR[0]),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[9]_i_2_n_0 ));
  FDRE \rdata_reg[0] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[0]),
        .Q(s_axi_control_RDATA[0]),
        .R(1'b0));
  FDRE \rdata_reg[10] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[10]),
        .Q(s_axi_control_RDATA[10]),
        .R(1'b0));
  FDRE \rdata_reg[11] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[11]),
        .Q(s_axi_control_RDATA[11]),
        .R(1'b0));
  FDRE \rdata_reg[12] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[12]),
        .Q(s_axi_control_RDATA[12]),
        .R(1'b0));
  FDRE \rdata_reg[13] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[13]),
        .Q(s_axi_control_RDATA[13]),
        .R(1'b0));
  FDRE \rdata_reg[14] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[14]),
        .Q(s_axi_control_RDATA[14]),
        .R(1'b0));
  FDRE \rdata_reg[15] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[15]),
        .Q(s_axi_control_RDATA[15]),
        .R(1'b0));
  FDRE \rdata_reg[16] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[16]),
        .Q(s_axi_control_RDATA[16]),
        .R(1'b0));
  FDRE \rdata_reg[17] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[17]),
        .Q(s_axi_control_RDATA[17]),
        .R(1'b0));
  FDRE \rdata_reg[18] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[18]),
        .Q(s_axi_control_RDATA[18]),
        .R(1'b0));
  FDRE \rdata_reg[19] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[19]),
        .Q(s_axi_control_RDATA[19]),
        .R(1'b0));
  FDRE \rdata_reg[1] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[1]),
        .Q(s_axi_control_RDATA[1]),
        .R(1'b0));
  FDRE \rdata_reg[20] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[20]),
        .Q(s_axi_control_RDATA[20]),
        .R(1'b0));
  FDRE \rdata_reg[21] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[21]),
        .Q(s_axi_control_RDATA[21]),
        .R(1'b0));
  FDRE \rdata_reg[22] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[22]),
        .Q(s_axi_control_RDATA[22]),
        .R(1'b0));
  FDRE \rdata_reg[23] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[23]),
        .Q(s_axi_control_RDATA[23]),
        .R(1'b0));
  FDRE \rdata_reg[24] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[24]),
        .Q(s_axi_control_RDATA[24]),
        .R(1'b0));
  FDRE \rdata_reg[25] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[25]),
        .Q(s_axi_control_RDATA[25]),
        .R(1'b0));
  FDRE \rdata_reg[26] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[26]),
        .Q(s_axi_control_RDATA[26]),
        .R(1'b0));
  FDRE \rdata_reg[27] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[27]),
        .Q(s_axi_control_RDATA[27]),
        .R(1'b0));
  FDRE \rdata_reg[28] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[28]),
        .Q(s_axi_control_RDATA[28]),
        .R(1'b0));
  FDRE \rdata_reg[29] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[29]),
        .Q(s_axi_control_RDATA[29]),
        .R(1'b0));
  FDRE \rdata_reg[2] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[2]),
        .Q(s_axi_control_RDATA[2]),
        .R(1'b0));
  FDRE \rdata_reg[30] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[30]),
        .Q(s_axi_control_RDATA[30]),
        .R(1'b0));
  FDRE \rdata_reg[31] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[31]),
        .Q(s_axi_control_RDATA[31]),
        .R(1'b0));
  FDRE \rdata_reg[3] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[3]),
        .Q(s_axi_control_RDATA[3]),
        .R(1'b0));
  FDRE \rdata_reg[4] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[4]),
        .Q(s_axi_control_RDATA[4]),
        .R(1'b0));
  FDRE \rdata_reg[5] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[5]),
        .Q(s_axi_control_RDATA[5]),
        .R(1'b0));
  FDRE \rdata_reg[6] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[6]),
        .Q(s_axi_control_RDATA[6]),
        .R(1'b0));
  FDRE \rdata_reg[7] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[7]),
        .Q(s_axi_control_RDATA[7]),
        .R(1'b0));
  FDRE \rdata_reg[8] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[8]),
        .Q(s_axi_control_RDATA[8]),
        .R(1'b0));
  FDRE \rdata_reg[9] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[9]),
        .Q(s_axi_control_RDATA[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \waddr[4]_i_1 
       (.I0(\FSM_onehot_wstate_reg[1]_0 ),
        .I1(s_axi_control_AWVALID),
        .O(waddr));
  FDRE \waddr_reg[0] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[0]),
        .Q(\waddr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \waddr_reg[1] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[1]),
        .Q(\waddr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \waddr_reg[2] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[2]),
        .Q(\waddr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \waddr_reg[3] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[3]),
        .Q(\waddr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \waddr_reg[4] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[4]),
        .Q(\waddr_reg_n_0_[4] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "paillier_fl_kernel_flow_control_loop_pipe_sequential_init" *) 
module design_1_paillier_fl_kernel_0_0_paillier_fl_kernel_flow_control_loop_pipe_sequential_init
   (D,
    ap_loop_exit_ready_pp0_iter1_reg_reg,
    E,
    SR,
    \B_V_data_1_state_reg[0] ,
    \B_V_data_1_state_reg[0]_0 ,
    \B_V_data_1_state_reg[1] ,
    S,
    \i_fu_44_reg[23] ,
    \i_fu_44_reg[15] ,
    \i_fu_44_reg[7] ,
    DI,
    grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg_reg,
    grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg_reg_0,
    \trunc_ln163_reg_71_reg[30] ,
    \B_V_data_1_state_reg[0]_1 ,
    \B_V_data_1_state_reg[0]_2 ,
    \ap_CS_fsm_reg[2] ,
    ap_rst_n_inv,
    ap_clk,
    ap_loop_exit_ready_pp0_iter1_reg,
    CO,
    grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg,
    ap_loop_exit_ready_pp0_iter1_reg_reg_0,
    data_in_TVALID_int_regslice,
    ap_rst_n,
    grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_ready,
    ap_enable_reg_pp0_iter1,
    icmp_ln178_reg_120,
    Q,
    data_out_TREADY_int_regslice,
    \ap_CS_fsm_reg[3] ,
    icmp_ln178_reg_76,
    B_V_data_1_sel_rd_reg,
    \i_fu_44_reg[30] ,
    icmp_ln178_fu_88_p2_carry__2,
    B_V_data_1_sel_wr);
  output [30:0]D;
  output ap_loop_exit_ready_pp0_iter1_reg_reg;
  output [0:0]E;
  output [0:0]SR;
  output \B_V_data_1_state_reg[0] ;
  output \B_V_data_1_state_reg[0]_0 ;
  output \B_V_data_1_state_reg[1] ;
  output [3:0]S;
  output [3:0]\i_fu_44_reg[23] ;
  output [3:0]\i_fu_44_reg[15] ;
  output [3:0]\i_fu_44_reg[7] ;
  output [3:0]DI;
  output [3:0]grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg_reg;
  output [3:0]grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg_reg_0;
  output [3:0]\trunc_ln163_reg_71_reg[30] ;
  output \B_V_data_1_state_reg[0]_1 ;
  output \B_V_data_1_state_reg[0]_2 ;
  output \ap_CS_fsm_reg[2] ;
  input ap_rst_n_inv;
  input ap_clk;
  input ap_loop_exit_ready_pp0_iter1_reg;
  input [0:0]CO;
  input grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg;
  input ap_loop_exit_ready_pp0_iter1_reg_reg_0;
  input data_in_TVALID_int_regslice;
  input ap_rst_n;
  input grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_ready;
  input ap_enable_reg_pp0_iter1;
  input icmp_ln178_reg_120;
  input [0:0]Q;
  input data_out_TREADY_int_regslice;
  input \ap_CS_fsm_reg[3] ;
  input icmp_ln178_reg_76;
  input B_V_data_1_sel_rd_reg;
  input [30:0]\i_fu_44_reg[30] ;
  input [30:0]icmp_ln178_fu_88_p2_carry__2;
  input B_V_data_1_sel_wr;

  wire B_V_data_1_sel_rd_reg;
  wire B_V_data_1_sel_wr;
  wire \B_V_data_1_state_reg[0] ;
  wire \B_V_data_1_state_reg[0]_0 ;
  wire \B_V_data_1_state_reg[0]_1 ;
  wire \B_V_data_1_state_reg[0]_2 ;
  wire \B_V_data_1_state_reg[1] ;
  wire [0:0]CO;
  wire [30:0]D;
  wire [3:0]DI;
  wire [0:0]E;
  wire [0:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire \ap_CS_fsm_reg[2] ;
  wire \ap_CS_fsm_reg[3] ;
  wire ap_clk;
  wire ap_condition_93;
  wire ap_done_cache;
  wire ap_done_cache_i_1_n_0;
  wire ap_enable_reg_pp0_iter1;
  wire ap_loop_exit_ready_pp0_iter1_reg;
  wire ap_loop_exit_ready_pp0_iter1_reg_reg;
  wire ap_loop_exit_ready_pp0_iter1_reg_reg_0;
  wire ap_loop_init_int;
  wire ap_loop_init_int_i_1_n_0;
  wire ap_loop_init_int_i_2_n_0;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [30:0]ap_sig_allocacmp_i_load;
  wire data_in_TVALID_int_regslice;
  wire \data_in_read_reg_124[127]_i_3_n_0 ;
  wire data_out_TREADY_int_regslice;
  wire grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_ready;
  wire grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg;
  wire [3:0]grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg_reg;
  wire [3:0]grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg_reg_0;
  wire \i_fu_44_reg[12]_i_1_n_0 ;
  wire \i_fu_44_reg[12]_i_1_n_1 ;
  wire \i_fu_44_reg[12]_i_1_n_2 ;
  wire \i_fu_44_reg[12]_i_1_n_3 ;
  wire [3:0]\i_fu_44_reg[15] ;
  wire \i_fu_44_reg[16]_i_1_n_0 ;
  wire \i_fu_44_reg[16]_i_1_n_1 ;
  wire \i_fu_44_reg[16]_i_1_n_2 ;
  wire \i_fu_44_reg[16]_i_1_n_3 ;
  wire \i_fu_44_reg[20]_i_1_n_0 ;
  wire \i_fu_44_reg[20]_i_1_n_1 ;
  wire \i_fu_44_reg[20]_i_1_n_2 ;
  wire \i_fu_44_reg[20]_i_1_n_3 ;
  wire [3:0]\i_fu_44_reg[23] ;
  wire \i_fu_44_reg[24]_i_1_n_0 ;
  wire \i_fu_44_reg[24]_i_1_n_1 ;
  wire \i_fu_44_reg[24]_i_1_n_2 ;
  wire \i_fu_44_reg[24]_i_1_n_3 ;
  wire \i_fu_44_reg[28]_i_1_n_0 ;
  wire \i_fu_44_reg[28]_i_1_n_1 ;
  wire \i_fu_44_reg[28]_i_1_n_2 ;
  wire \i_fu_44_reg[28]_i_1_n_3 ;
  wire [30:0]\i_fu_44_reg[30] ;
  wire \i_fu_44_reg[30]_i_3_n_3 ;
  wire \i_fu_44_reg[4]_i_1_n_0 ;
  wire \i_fu_44_reg[4]_i_1_n_1 ;
  wire \i_fu_44_reg[4]_i_1_n_2 ;
  wire \i_fu_44_reg[4]_i_1_n_3 ;
  wire [3:0]\i_fu_44_reg[7] ;
  wire \i_fu_44_reg[8]_i_1_n_0 ;
  wire \i_fu_44_reg[8]_i_1_n_1 ;
  wire \i_fu_44_reg[8]_i_1_n_2 ;
  wire \i_fu_44_reg[8]_i_1_n_3 ;
  wire [30:0]icmp_ln178_fu_88_p2_carry__2;
  wire icmp_ln178_reg_120;
  wire icmp_ln178_reg_76;
  wire [3:0]\trunc_ln163_reg_71_reg[30] ;
  wire [3:1]\NLW_i_fu_44_reg[30]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_i_fu_44_reg[30]_i_3_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hBFFFFFFF40000000)) 
    B_V_data_1_sel_wr_i_1
       (.I0(ap_loop_init_int_i_2_n_0),
        .I1(Q),
        .I2(icmp_ln178_reg_120),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(data_out_TREADY_int_regslice),
        .I5(B_V_data_1_sel_wr),
        .O(\ap_CS_fsm_reg[2] ));
  LUT6 #(
    .INIT(64'hBF00000000000000)) 
    \B_V_data_1_state[0]_i_2 
       (.I0(data_in_TVALID_int_regslice),
        .I1(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .I2(CO),
        .I3(Q),
        .I4(icmp_ln178_reg_120),
        .I5(ap_enable_reg_pp0_iter1),
        .O(\B_V_data_1_state_reg[0] ));
  LUT6 #(
    .INIT(64'hE000000000000000)) 
    \B_V_data_1_state[1]_i_3 
       (.I0(B_V_data_1_sel_rd_reg),
        .I1(data_out_TREADY_int_regslice),
        .I2(Q),
        .I3(icmp_ln178_reg_76),
        .I4(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .I5(CO),
        .O(\B_V_data_1_state_reg[1] ));
  LUT6 #(
    .INIT(64'hF200F2000000F000)) 
    \ap_CS_fsm[3]_i_2 
       (.I0(CO),
        .I1(data_in_TVALID_int_regslice),
        .I2(\ap_CS_fsm_reg[3] ),
        .I3(icmp_ln178_reg_76),
        .I4(ap_done_cache),
        .I5(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .O(\B_V_data_1_state_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hBF0F0F0FBF000000)) 
    ap_done_cache_i_1
       (.I0(data_in_TVALID_int_regslice),
        .I1(CO),
        .I2(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .I3(ap_loop_exit_ready_pp0_iter1_reg),
        .I4(\data_in_read_reg_124[127]_i_3_n_0 ),
        .I5(ap_done_cache),
        .O(ap_done_cache_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_cache_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_cache_i_1_n_0),
        .Q(ap_done_cache),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'hF5F580A0)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(\data_in_read_reg_124[127]_i_3_n_0 ),
        .I1(data_in_TVALID_int_regslice),
        .I2(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .I3(CO),
        .I4(ap_enable_reg_pp0_iter1),
        .O(\B_V_data_1_state_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h00F0AAAA80B0AAAA)) 
    ap_loop_exit_ready_pp0_iter1_reg_i_1
       (.I0(ap_loop_exit_ready_pp0_iter1_reg),
        .I1(CO),
        .I2(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .I3(ap_loop_exit_ready_pp0_iter1_reg_reg_0),
        .I4(\data_in_read_reg_124[127]_i_3_n_0 ),
        .I5(data_in_TVALID_int_regslice),
        .O(ap_loop_exit_ready_pp0_iter1_reg_reg));
  LUT6 #(
    .INIT(64'h40FF40FFFFFF40FF)) 
    ap_loop_init_int_i_1
       (.I0(ap_loop_init_int_i_2_n_0),
        .I1(\data_in_read_reg_124[127]_i_3_n_0 ),
        .I2(ap_loop_exit_ready_pp0_iter1_reg),
        .I3(ap_rst_n),
        .I4(ap_loop_init_int),
        .I5(ap_condition_93),
        .O(ap_loop_init_int_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h08)) 
    ap_loop_init_int_i_2
       (.I0(CO),
        .I1(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .I2(data_in_TVALID_int_regslice),
        .O(ap_loop_init_int_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h8088)) 
    ap_loop_init_int_i_3
       (.I0(\data_in_read_reg_124[127]_i_3_n_0 ),
        .I1(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .I2(data_in_TVALID_int_regslice),
        .I3(CO),
        .O(ap_condition_93));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_int_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_int_i_1_n_0),
        .Q(ap_loop_init_int),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h8A00)) 
    \data_in_read_reg_124[127]_i_1 
       (.I0(CO),
        .I1(data_in_TVALID_int_regslice),
        .I2(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .I3(\data_in_read_reg_124[127]_i_3_n_0 ),
        .O(E));
  LUT4 #(
    .INIT(16'hF777)) 
    \data_in_read_reg_124[127]_i_3 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(icmp_ln178_reg_120),
        .I2(Q),
        .I3(data_out_TREADY_int_regslice),
        .O(\data_in_read_reg_124[127]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \i_fu_44[0]_i_1 
       (.I0(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\i_fu_44_reg[30] [0]),
        .O(D[0]));
  LUT3 #(
    .INIT(8'h2A)) 
    \i_fu_44[12]_i_2 
       (.I0(\i_fu_44_reg[30] [12]),
        .I1(ap_loop_init_int),
        .I2(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .O(ap_sig_allocacmp_i_load[12]));
  LUT3 #(
    .INIT(8'h2A)) 
    \i_fu_44[12]_i_3 
       (.I0(\i_fu_44_reg[30] [11]),
        .I1(ap_loop_init_int),
        .I2(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .O(ap_sig_allocacmp_i_load[11]));
  LUT3 #(
    .INIT(8'h2A)) 
    \i_fu_44[12]_i_4 
       (.I0(\i_fu_44_reg[30] [10]),
        .I1(ap_loop_init_int),
        .I2(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .O(ap_sig_allocacmp_i_load[10]));
  LUT3 #(
    .INIT(8'h2A)) 
    \i_fu_44[12]_i_5 
       (.I0(\i_fu_44_reg[30] [9]),
        .I1(ap_loop_init_int),
        .I2(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .O(ap_sig_allocacmp_i_load[9]));
  LUT3 #(
    .INIT(8'h2A)) 
    \i_fu_44[16]_i_2 
       (.I0(\i_fu_44_reg[30] [16]),
        .I1(ap_loop_init_int),
        .I2(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .O(ap_sig_allocacmp_i_load[16]));
  LUT3 #(
    .INIT(8'h2A)) 
    \i_fu_44[16]_i_3 
       (.I0(\i_fu_44_reg[30] [15]),
        .I1(ap_loop_init_int),
        .I2(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .O(ap_sig_allocacmp_i_load[15]));
  LUT3 #(
    .INIT(8'h2A)) 
    \i_fu_44[16]_i_4 
       (.I0(\i_fu_44_reg[30] [14]),
        .I1(ap_loop_init_int),
        .I2(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .O(ap_sig_allocacmp_i_load[14]));
  LUT3 #(
    .INIT(8'h2A)) 
    \i_fu_44[16]_i_5 
       (.I0(\i_fu_44_reg[30] [13]),
        .I1(ap_loop_init_int),
        .I2(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .O(ap_sig_allocacmp_i_load[13]));
  LUT3 #(
    .INIT(8'h2A)) 
    \i_fu_44[20]_i_2 
       (.I0(\i_fu_44_reg[30] [20]),
        .I1(ap_loop_init_int),
        .I2(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .O(ap_sig_allocacmp_i_load[20]));
  LUT3 #(
    .INIT(8'h2A)) 
    \i_fu_44[20]_i_3 
       (.I0(\i_fu_44_reg[30] [19]),
        .I1(ap_loop_init_int),
        .I2(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .O(ap_sig_allocacmp_i_load[19]));
  LUT3 #(
    .INIT(8'h2A)) 
    \i_fu_44[20]_i_4 
       (.I0(\i_fu_44_reg[30] [18]),
        .I1(ap_loop_init_int),
        .I2(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .O(ap_sig_allocacmp_i_load[18]));
  LUT3 #(
    .INIT(8'h2A)) 
    \i_fu_44[20]_i_5 
       (.I0(\i_fu_44_reg[30] [17]),
        .I1(ap_loop_init_int),
        .I2(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .O(ap_sig_allocacmp_i_load[17]));
  LUT3 #(
    .INIT(8'h2A)) 
    \i_fu_44[24]_i_2 
       (.I0(\i_fu_44_reg[30] [24]),
        .I1(ap_loop_init_int),
        .I2(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .O(ap_sig_allocacmp_i_load[24]));
  LUT3 #(
    .INIT(8'h2A)) 
    \i_fu_44[24]_i_3 
       (.I0(\i_fu_44_reg[30] [23]),
        .I1(ap_loop_init_int),
        .I2(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .O(ap_sig_allocacmp_i_load[23]));
  LUT3 #(
    .INIT(8'h2A)) 
    \i_fu_44[24]_i_4 
       (.I0(\i_fu_44_reg[30] [22]),
        .I1(ap_loop_init_int),
        .I2(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .O(ap_sig_allocacmp_i_load[22]));
  LUT3 #(
    .INIT(8'h2A)) 
    \i_fu_44[24]_i_5 
       (.I0(\i_fu_44_reg[30] [21]),
        .I1(ap_loop_init_int),
        .I2(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .O(ap_sig_allocacmp_i_load[21]));
  LUT3 #(
    .INIT(8'h2A)) 
    \i_fu_44[28]_i_2 
       (.I0(\i_fu_44_reg[30] [28]),
        .I1(ap_loop_init_int),
        .I2(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .O(ap_sig_allocacmp_i_load[28]));
  LUT3 #(
    .INIT(8'h2A)) 
    \i_fu_44[28]_i_3 
       (.I0(\i_fu_44_reg[30] [27]),
        .I1(ap_loop_init_int),
        .I2(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .O(ap_sig_allocacmp_i_load[27]));
  LUT3 #(
    .INIT(8'h2A)) 
    \i_fu_44[28]_i_4 
       (.I0(\i_fu_44_reg[30] [26]),
        .I1(ap_loop_init_int),
        .I2(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .O(ap_sig_allocacmp_i_load[26]));
  LUT3 #(
    .INIT(8'h2A)) 
    \i_fu_44[28]_i_5 
       (.I0(\i_fu_44_reg[30] [25]),
        .I1(ap_loop_init_int),
        .I2(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .O(ap_sig_allocacmp_i_load[25]));
  LUT2 #(
    .INIT(4'h8)) 
    \i_fu_44[30]_i_1 
       (.I0(ap_loop_init_int),
        .I1(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_ready),
        .O(SR));
  LUT3 #(
    .INIT(8'h2A)) 
    \i_fu_44[30]_i_6 
       (.I0(\i_fu_44_reg[30] [30]),
        .I1(ap_loop_init_int),
        .I2(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .O(ap_sig_allocacmp_i_load[30]));
  LUT3 #(
    .INIT(8'h2A)) 
    \i_fu_44[30]_i_7 
       (.I0(\i_fu_44_reg[30] [29]),
        .I1(ap_loop_init_int),
        .I2(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .O(ap_sig_allocacmp_i_load[29]));
  LUT3 #(
    .INIT(8'h2A)) 
    \i_fu_44[4]_i_2 
       (.I0(\i_fu_44_reg[30] [0]),
        .I1(ap_loop_init_int),
        .I2(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .O(ap_sig_allocacmp_i_load[0]));
  LUT3 #(
    .INIT(8'h2A)) 
    \i_fu_44[4]_i_3 
       (.I0(\i_fu_44_reg[30] [4]),
        .I1(ap_loop_init_int),
        .I2(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .O(ap_sig_allocacmp_i_load[4]));
  LUT3 #(
    .INIT(8'h2A)) 
    \i_fu_44[4]_i_4 
       (.I0(\i_fu_44_reg[30] [3]),
        .I1(ap_loop_init_int),
        .I2(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .O(ap_sig_allocacmp_i_load[3]));
  LUT3 #(
    .INIT(8'h2A)) 
    \i_fu_44[4]_i_5 
       (.I0(\i_fu_44_reg[30] [2]),
        .I1(ap_loop_init_int),
        .I2(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .O(ap_sig_allocacmp_i_load[2]));
  LUT3 #(
    .INIT(8'h2A)) 
    \i_fu_44[4]_i_6 
       (.I0(\i_fu_44_reg[30] [1]),
        .I1(ap_loop_init_int),
        .I2(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .O(ap_sig_allocacmp_i_load[1]));
  LUT3 #(
    .INIT(8'h2A)) 
    \i_fu_44[8]_i_2 
       (.I0(\i_fu_44_reg[30] [8]),
        .I1(ap_loop_init_int),
        .I2(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .O(ap_sig_allocacmp_i_load[8]));
  LUT3 #(
    .INIT(8'h2A)) 
    \i_fu_44[8]_i_3 
       (.I0(\i_fu_44_reg[30] [7]),
        .I1(ap_loop_init_int),
        .I2(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .O(ap_sig_allocacmp_i_load[7]));
  LUT3 #(
    .INIT(8'h2A)) 
    \i_fu_44[8]_i_4 
       (.I0(\i_fu_44_reg[30] [6]),
        .I1(ap_loop_init_int),
        .I2(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .O(ap_sig_allocacmp_i_load[6]));
  LUT3 #(
    .INIT(8'h2A)) 
    \i_fu_44[8]_i_5 
       (.I0(\i_fu_44_reg[30] [5]),
        .I1(ap_loop_init_int),
        .I2(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .O(ap_sig_allocacmp_i_load[5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \i_fu_44_reg[12]_i_1 
       (.CI(\i_fu_44_reg[8]_i_1_n_0 ),
        .CO({\i_fu_44_reg[12]_i_1_n_0 ,\i_fu_44_reg[12]_i_1_n_1 ,\i_fu_44_reg[12]_i_1_n_2 ,\i_fu_44_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[12:9]),
        .S(ap_sig_allocacmp_i_load[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \i_fu_44_reg[16]_i_1 
       (.CI(\i_fu_44_reg[12]_i_1_n_0 ),
        .CO({\i_fu_44_reg[16]_i_1_n_0 ,\i_fu_44_reg[16]_i_1_n_1 ,\i_fu_44_reg[16]_i_1_n_2 ,\i_fu_44_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[16:13]),
        .S(ap_sig_allocacmp_i_load[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \i_fu_44_reg[20]_i_1 
       (.CI(\i_fu_44_reg[16]_i_1_n_0 ),
        .CO({\i_fu_44_reg[20]_i_1_n_0 ,\i_fu_44_reg[20]_i_1_n_1 ,\i_fu_44_reg[20]_i_1_n_2 ,\i_fu_44_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[20:17]),
        .S(ap_sig_allocacmp_i_load[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \i_fu_44_reg[24]_i_1 
       (.CI(\i_fu_44_reg[20]_i_1_n_0 ),
        .CO({\i_fu_44_reg[24]_i_1_n_0 ,\i_fu_44_reg[24]_i_1_n_1 ,\i_fu_44_reg[24]_i_1_n_2 ,\i_fu_44_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[24:21]),
        .S(ap_sig_allocacmp_i_load[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \i_fu_44_reg[28]_i_1 
       (.CI(\i_fu_44_reg[24]_i_1_n_0 ),
        .CO({\i_fu_44_reg[28]_i_1_n_0 ,\i_fu_44_reg[28]_i_1_n_1 ,\i_fu_44_reg[28]_i_1_n_2 ,\i_fu_44_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[28:25]),
        .S(ap_sig_allocacmp_i_load[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \i_fu_44_reg[30]_i_3 
       (.CI(\i_fu_44_reg[28]_i_1_n_0 ),
        .CO({\NLW_i_fu_44_reg[30]_i_3_CO_UNCONNECTED [3:1],\i_fu_44_reg[30]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_i_fu_44_reg[30]_i_3_O_UNCONNECTED [3:2],D[30:29]}),
        .S({1'b0,1'b0,ap_sig_allocacmp_i_load[30:29]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \i_fu_44_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\i_fu_44_reg[4]_i_1_n_0 ,\i_fu_44_reg[4]_i_1_n_1 ,\i_fu_44_reg[4]_i_1_n_2 ,\i_fu_44_reg[4]_i_1_n_3 }),
        .CYINIT(ap_sig_allocacmp_i_load[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[4:1]),
        .S(ap_sig_allocacmp_i_load[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \i_fu_44_reg[8]_i_1 
       (.CI(\i_fu_44_reg[4]_i_1_n_0 ),
        .CO({\i_fu_44_reg[8]_i_1_n_0 ,\i_fu_44_reg[8]_i_1_n_1 ,\i_fu_44_reg[8]_i_1_n_2 ,\i_fu_44_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[8:5]),
        .S(ap_sig_allocacmp_i_load[8:5]));
  LUT6 #(
    .INIT(64'h8FFF8F8F888F0000)) 
    icmp_ln178_fu_88_p2_carry__0_i_1
       (.I0(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\i_fu_44_reg[30] [15]),
        .I3(\i_fu_44_reg[30] [14]),
        .I4(icmp_ln178_fu_88_p2_carry__2[14]),
        .I5(icmp_ln178_fu_88_p2_carry__2[15]),
        .O(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg_reg[3]));
  LUT6 #(
    .INIT(64'h8FFF8F8F888F0000)) 
    icmp_ln178_fu_88_p2_carry__0_i_2
       (.I0(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\i_fu_44_reg[30] [13]),
        .I3(\i_fu_44_reg[30] [12]),
        .I4(icmp_ln178_fu_88_p2_carry__2[12]),
        .I5(icmp_ln178_fu_88_p2_carry__2[13]),
        .O(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg_reg[2]));
  LUT6 #(
    .INIT(64'h8FFF8F8F888F0000)) 
    icmp_ln178_fu_88_p2_carry__0_i_3
       (.I0(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\i_fu_44_reg[30] [11]),
        .I3(\i_fu_44_reg[30] [10]),
        .I4(icmp_ln178_fu_88_p2_carry__2[10]),
        .I5(icmp_ln178_fu_88_p2_carry__2[11]),
        .O(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg_reg[1]));
  LUT6 #(
    .INIT(64'h8FFF8F8F888F0000)) 
    icmp_ln178_fu_88_p2_carry__0_i_4
       (.I0(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\i_fu_44_reg[30] [9]),
        .I3(\i_fu_44_reg[30] [8]),
        .I4(icmp_ln178_fu_88_p2_carry__2[8]),
        .I5(icmp_ln178_fu_88_p2_carry__2[9]),
        .O(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg_reg[0]));
  LUT6 #(
    .INIT(64'h2A00002A15C000D5)) 
    icmp_ln178_fu_88_p2_carry__0_i_5
       (.I0(\i_fu_44_reg[30] [15]),
        .I1(ap_loop_init_int),
        .I2(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .I3(icmp_ln178_fu_88_p2_carry__2[14]),
        .I4(\i_fu_44_reg[30] [14]),
        .I5(icmp_ln178_fu_88_p2_carry__2[15]),
        .O(\i_fu_44_reg[15] [3]));
  LUT6 #(
    .INIT(64'h2A00002A15C000D5)) 
    icmp_ln178_fu_88_p2_carry__0_i_6
       (.I0(\i_fu_44_reg[30] [13]),
        .I1(ap_loop_init_int),
        .I2(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .I3(icmp_ln178_fu_88_p2_carry__2[12]),
        .I4(\i_fu_44_reg[30] [12]),
        .I5(icmp_ln178_fu_88_p2_carry__2[13]),
        .O(\i_fu_44_reg[15] [2]));
  LUT6 #(
    .INIT(64'h2A00002A15C000D5)) 
    icmp_ln178_fu_88_p2_carry__0_i_7
       (.I0(\i_fu_44_reg[30] [11]),
        .I1(ap_loop_init_int),
        .I2(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .I3(icmp_ln178_fu_88_p2_carry__2[10]),
        .I4(\i_fu_44_reg[30] [10]),
        .I5(icmp_ln178_fu_88_p2_carry__2[11]),
        .O(\i_fu_44_reg[15] [1]));
  LUT6 #(
    .INIT(64'h2A00002A15C000D5)) 
    icmp_ln178_fu_88_p2_carry__0_i_8
       (.I0(\i_fu_44_reg[30] [9]),
        .I1(ap_loop_init_int),
        .I2(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .I3(icmp_ln178_fu_88_p2_carry__2[8]),
        .I4(\i_fu_44_reg[30] [8]),
        .I5(icmp_ln178_fu_88_p2_carry__2[9]),
        .O(\i_fu_44_reg[15] [0]));
  LUT6 #(
    .INIT(64'h8FFF8F8F888F0000)) 
    icmp_ln178_fu_88_p2_carry__1_i_1
       (.I0(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\i_fu_44_reg[30] [23]),
        .I3(\i_fu_44_reg[30] [22]),
        .I4(icmp_ln178_fu_88_p2_carry__2[22]),
        .I5(icmp_ln178_fu_88_p2_carry__2[23]),
        .O(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg_reg_0[3]));
  LUT6 #(
    .INIT(64'h8FFF8F8F888F0000)) 
    icmp_ln178_fu_88_p2_carry__1_i_2
       (.I0(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\i_fu_44_reg[30] [21]),
        .I3(\i_fu_44_reg[30] [20]),
        .I4(icmp_ln178_fu_88_p2_carry__2[20]),
        .I5(icmp_ln178_fu_88_p2_carry__2[21]),
        .O(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg_reg_0[2]));
  LUT6 #(
    .INIT(64'h8FFF8F8F888F0000)) 
    icmp_ln178_fu_88_p2_carry__1_i_3
       (.I0(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\i_fu_44_reg[30] [19]),
        .I3(\i_fu_44_reg[30] [18]),
        .I4(icmp_ln178_fu_88_p2_carry__2[18]),
        .I5(icmp_ln178_fu_88_p2_carry__2[19]),
        .O(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg_reg_0[1]));
  LUT6 #(
    .INIT(64'h8FFF8F8F888F0000)) 
    icmp_ln178_fu_88_p2_carry__1_i_4
       (.I0(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\i_fu_44_reg[30] [17]),
        .I3(\i_fu_44_reg[30] [16]),
        .I4(icmp_ln178_fu_88_p2_carry__2[16]),
        .I5(icmp_ln178_fu_88_p2_carry__2[17]),
        .O(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg_reg_0[0]));
  LUT6 #(
    .INIT(64'h2A00002A15C000D5)) 
    icmp_ln178_fu_88_p2_carry__1_i_5
       (.I0(\i_fu_44_reg[30] [23]),
        .I1(ap_loop_init_int),
        .I2(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .I3(icmp_ln178_fu_88_p2_carry__2[22]),
        .I4(\i_fu_44_reg[30] [22]),
        .I5(icmp_ln178_fu_88_p2_carry__2[23]),
        .O(\i_fu_44_reg[23] [3]));
  LUT6 #(
    .INIT(64'h2A00002A15C000D5)) 
    icmp_ln178_fu_88_p2_carry__1_i_6
       (.I0(\i_fu_44_reg[30] [21]),
        .I1(ap_loop_init_int),
        .I2(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .I3(icmp_ln178_fu_88_p2_carry__2[20]),
        .I4(\i_fu_44_reg[30] [20]),
        .I5(icmp_ln178_fu_88_p2_carry__2[21]),
        .O(\i_fu_44_reg[23] [2]));
  LUT6 #(
    .INIT(64'h2A00002A15C000D5)) 
    icmp_ln178_fu_88_p2_carry__1_i_7
       (.I0(\i_fu_44_reg[30] [19]),
        .I1(ap_loop_init_int),
        .I2(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .I3(icmp_ln178_fu_88_p2_carry__2[18]),
        .I4(\i_fu_44_reg[30] [18]),
        .I5(icmp_ln178_fu_88_p2_carry__2[19]),
        .O(\i_fu_44_reg[23] [1]));
  LUT6 #(
    .INIT(64'h2A00002A15C000D5)) 
    icmp_ln178_fu_88_p2_carry__1_i_8
       (.I0(\i_fu_44_reg[30] [17]),
        .I1(ap_loop_init_int),
        .I2(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .I3(icmp_ln178_fu_88_p2_carry__2[16]),
        .I4(\i_fu_44_reg[30] [16]),
        .I5(icmp_ln178_fu_88_p2_carry__2[17]),
        .O(\i_fu_44_reg[23] [0]));
  LUT4 #(
    .INIT(16'h80AA)) 
    icmp_ln178_fu_88_p2_carry__2_i_1
       (.I0(icmp_ln178_fu_88_p2_carry__2[30]),
        .I1(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\i_fu_44_reg[30] [30]),
        .O(\trunc_ln163_reg_71_reg[30] [3]));
  LUT6 #(
    .INIT(64'h8FFF8F8F888F0000)) 
    icmp_ln178_fu_88_p2_carry__2_i_2
       (.I0(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\i_fu_44_reg[30] [29]),
        .I3(\i_fu_44_reg[30] [28]),
        .I4(icmp_ln178_fu_88_p2_carry__2[28]),
        .I5(icmp_ln178_fu_88_p2_carry__2[29]),
        .O(\trunc_ln163_reg_71_reg[30] [2]));
  LUT6 #(
    .INIT(64'h8FFF8F8F888F0000)) 
    icmp_ln178_fu_88_p2_carry__2_i_3
       (.I0(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\i_fu_44_reg[30] [27]),
        .I3(\i_fu_44_reg[30] [26]),
        .I4(icmp_ln178_fu_88_p2_carry__2[26]),
        .I5(icmp_ln178_fu_88_p2_carry__2[27]),
        .O(\trunc_ln163_reg_71_reg[30] [1]));
  LUT6 #(
    .INIT(64'h8FFF8F8F888F0000)) 
    icmp_ln178_fu_88_p2_carry__2_i_4
       (.I0(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\i_fu_44_reg[30] [25]),
        .I3(\i_fu_44_reg[30] [24]),
        .I4(icmp_ln178_fu_88_p2_carry__2[24]),
        .I5(icmp_ln178_fu_88_p2_carry__2[25]),
        .O(\trunc_ln163_reg_71_reg[30] [0]));
  LUT4 #(
    .INIT(16'h708F)) 
    icmp_ln178_fu_88_p2_carry__2_i_5
       (.I0(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\i_fu_44_reg[30] [30]),
        .I3(icmp_ln178_fu_88_p2_carry__2[30]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h2A00002A15C000D5)) 
    icmp_ln178_fu_88_p2_carry__2_i_6
       (.I0(\i_fu_44_reg[30] [29]),
        .I1(ap_loop_init_int),
        .I2(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .I3(icmp_ln178_fu_88_p2_carry__2[28]),
        .I4(\i_fu_44_reg[30] [28]),
        .I5(icmp_ln178_fu_88_p2_carry__2[29]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h2A00002A15C000D5)) 
    icmp_ln178_fu_88_p2_carry__2_i_7
       (.I0(\i_fu_44_reg[30] [27]),
        .I1(ap_loop_init_int),
        .I2(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .I3(icmp_ln178_fu_88_p2_carry__2[26]),
        .I4(\i_fu_44_reg[30] [26]),
        .I5(icmp_ln178_fu_88_p2_carry__2[27]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h2A00002A15C000D5)) 
    icmp_ln178_fu_88_p2_carry__2_i_8
       (.I0(\i_fu_44_reg[30] [25]),
        .I1(ap_loop_init_int),
        .I2(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .I3(icmp_ln178_fu_88_p2_carry__2[24]),
        .I4(\i_fu_44_reg[30] [24]),
        .I5(icmp_ln178_fu_88_p2_carry__2[25]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'h8FFF8F8F888F0000)) 
    icmp_ln178_fu_88_p2_carry_i_1
       (.I0(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\i_fu_44_reg[30] [7]),
        .I3(\i_fu_44_reg[30] [6]),
        .I4(icmp_ln178_fu_88_p2_carry__2[6]),
        .I5(icmp_ln178_fu_88_p2_carry__2[7]),
        .O(DI[3]));
  LUT6 #(
    .INIT(64'h8FFF8F8F888F0000)) 
    icmp_ln178_fu_88_p2_carry_i_2
       (.I0(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\i_fu_44_reg[30] [5]),
        .I3(\i_fu_44_reg[30] [4]),
        .I4(icmp_ln178_fu_88_p2_carry__2[4]),
        .I5(icmp_ln178_fu_88_p2_carry__2[5]),
        .O(DI[2]));
  LUT6 #(
    .INIT(64'h8FFF8F8F888F0000)) 
    icmp_ln178_fu_88_p2_carry_i_3
       (.I0(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\i_fu_44_reg[30] [3]),
        .I3(\i_fu_44_reg[30] [2]),
        .I4(icmp_ln178_fu_88_p2_carry__2[2]),
        .I5(icmp_ln178_fu_88_p2_carry__2[3]),
        .O(DI[1]));
  LUT6 #(
    .INIT(64'h8FFF8F8F888F0000)) 
    icmp_ln178_fu_88_p2_carry_i_4
       (.I0(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(\i_fu_44_reg[30] [1]),
        .I3(\i_fu_44_reg[30] [0]),
        .I4(icmp_ln178_fu_88_p2_carry__2[0]),
        .I5(icmp_ln178_fu_88_p2_carry__2[1]),
        .O(DI[0]));
  LUT6 #(
    .INIT(64'h2A00002A15C000D5)) 
    icmp_ln178_fu_88_p2_carry_i_5
       (.I0(\i_fu_44_reg[30] [7]),
        .I1(ap_loop_init_int),
        .I2(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .I3(icmp_ln178_fu_88_p2_carry__2[6]),
        .I4(\i_fu_44_reg[30] [6]),
        .I5(icmp_ln178_fu_88_p2_carry__2[7]),
        .O(\i_fu_44_reg[7] [3]));
  LUT6 #(
    .INIT(64'h2A00002A15C000D5)) 
    icmp_ln178_fu_88_p2_carry_i_6
       (.I0(\i_fu_44_reg[30] [5]),
        .I1(ap_loop_init_int),
        .I2(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .I3(icmp_ln178_fu_88_p2_carry__2[4]),
        .I4(\i_fu_44_reg[30] [4]),
        .I5(icmp_ln178_fu_88_p2_carry__2[5]),
        .O(\i_fu_44_reg[7] [2]));
  LUT6 #(
    .INIT(64'h2A00002A15C000D5)) 
    icmp_ln178_fu_88_p2_carry_i_7
       (.I0(\i_fu_44_reg[30] [3]),
        .I1(ap_loop_init_int),
        .I2(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .I3(icmp_ln178_fu_88_p2_carry__2[2]),
        .I4(\i_fu_44_reg[30] [2]),
        .I5(icmp_ln178_fu_88_p2_carry__2[3]),
        .O(\i_fu_44_reg[7] [1]));
  LUT6 #(
    .INIT(64'h1184848411212121)) 
    icmp_ln178_fu_88_p2_carry_i_8
       (.I0(icmp_ln178_fu_88_p2_carry__2[0]),
        .I1(icmp_ln178_fu_88_p2_carry__2[1]),
        .I2(\i_fu_44_reg[30] [0]),
        .I3(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(\i_fu_44_reg[30] [1]),
        .O(\i_fu_44_reg[7] [0]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hFF558A00)) 
    \icmp_ln178_reg_120[0]_i_1 
       (.I0(\data_in_read_reg_124[127]_i_3_n_0 ),
        .I1(data_in_TVALID_int_regslice),
        .I2(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .I3(CO),
        .I4(icmp_ln178_reg_120),
        .O(\B_V_data_1_state_reg[0]_2 ));
endmodule

(* ORIG_REF_NAME = "paillier_fl_kernel_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1" *) 
module design_1_paillier_fl_kernel_0_0_paillier_fl_kernel_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1
   (D,
    CO,
    grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg_reg,
    \B_V_data_1_state_reg[0] ,
    \B_V_data_1_state_reg[0]_0 ,
    \B_V_data_1_state_reg[1] ,
    \ap_CS_fsm_reg[2] ,
    data_in_TDATA_int_regslice,
    ap_clk,
    ap_rst_n_inv,
    grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg,
    ap_loop_exit_ready_pp0_iter1_reg_reg_0,
    data_in_TVALID_int_regslice,
    ap_rst_n,
    grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_ready,
    data_out_TREADY_int_regslice,
    Q,
    icmp_ln178_reg_76,
    icmp_ln178_fu_88_p2_carry__2_0,
    B_V_data_1_sel_wr,
    E,
    \data_in_read_reg_124_reg[127]_0 );
  output [127:0]D;
  output [0:0]CO;
  output grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg_reg;
  output \B_V_data_1_state_reg[0] ;
  output \B_V_data_1_state_reg[0]_0 ;
  output \B_V_data_1_state_reg[1] ;
  output \ap_CS_fsm_reg[2] ;
  input [0:0]data_in_TDATA_int_regslice;
  input ap_clk;
  input ap_rst_n_inv;
  input grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg;
  input ap_loop_exit_ready_pp0_iter1_reg_reg_0;
  input data_in_TVALID_int_regslice;
  input ap_rst_n;
  input grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_ready;
  input data_out_TREADY_int_regslice;
  input [0:0]Q;
  input icmp_ln178_reg_76;
  input [30:0]icmp_ln178_fu_88_p2_carry__2_0;
  input B_V_data_1_sel_wr;
  input [0:0]E;
  input [126:0]\data_in_read_reg_124_reg[127]_0 ;

  wire B_V_data_1_sel_wr;
  wire \B_V_data_1_state[1]_i_4_n_0 ;
  wire \B_V_data_1_state_reg[0] ;
  wire \B_V_data_1_state_reg[0]_0 ;
  wire \B_V_data_1_state_reg[1] ;
  wire [0:0]CO;
  wire [127:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [30:0]add_ln178_fu_94_p2;
  wire \ap_CS_fsm[3]_i_3_n_0 ;
  wire \ap_CS_fsm_reg[2] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_loop_exit_ready_pp0_iter1_reg;
  wire ap_loop_exit_ready_pp0_iter1_reg_reg_0;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [0:0]data_in_TDATA_int_regslice;
  wire data_in_TVALID_int_regslice;
  wire [126:0]\data_in_read_reg_124_reg[127]_0 ;
  wire data_out_TREADY_int_regslice;
  wire flow_control_loop_pipe_sequential_init_U_n_31;
  wire flow_control_loop_pipe_sequential_init_U_n_33;
  wire flow_control_loop_pipe_sequential_init_U_n_37;
  wire flow_control_loop_pipe_sequential_init_U_n_38;
  wire flow_control_loop_pipe_sequential_init_U_n_39;
  wire flow_control_loop_pipe_sequential_init_U_n_40;
  wire flow_control_loop_pipe_sequential_init_U_n_41;
  wire flow_control_loop_pipe_sequential_init_U_n_42;
  wire flow_control_loop_pipe_sequential_init_U_n_43;
  wire flow_control_loop_pipe_sequential_init_U_n_44;
  wire flow_control_loop_pipe_sequential_init_U_n_45;
  wire flow_control_loop_pipe_sequential_init_U_n_46;
  wire flow_control_loop_pipe_sequential_init_U_n_47;
  wire flow_control_loop_pipe_sequential_init_U_n_48;
  wire flow_control_loop_pipe_sequential_init_U_n_49;
  wire flow_control_loop_pipe_sequential_init_U_n_50;
  wire flow_control_loop_pipe_sequential_init_U_n_51;
  wire flow_control_loop_pipe_sequential_init_U_n_52;
  wire flow_control_loop_pipe_sequential_init_U_n_53;
  wire flow_control_loop_pipe_sequential_init_U_n_54;
  wire flow_control_loop_pipe_sequential_init_U_n_55;
  wire flow_control_loop_pipe_sequential_init_U_n_56;
  wire flow_control_loop_pipe_sequential_init_U_n_57;
  wire flow_control_loop_pipe_sequential_init_U_n_58;
  wire flow_control_loop_pipe_sequential_init_U_n_59;
  wire flow_control_loop_pipe_sequential_init_U_n_60;
  wire flow_control_loop_pipe_sequential_init_U_n_61;
  wire flow_control_loop_pipe_sequential_init_U_n_62;
  wire flow_control_loop_pipe_sequential_init_U_n_63;
  wire flow_control_loop_pipe_sequential_init_U_n_64;
  wire flow_control_loop_pipe_sequential_init_U_n_65;
  wire flow_control_loop_pipe_sequential_init_U_n_66;
  wire flow_control_loop_pipe_sequential_init_U_n_67;
  wire flow_control_loop_pipe_sequential_init_U_n_68;
  wire flow_control_loop_pipe_sequential_init_U_n_69;
  wire flow_control_loop_pipe_sequential_init_U_n_70;
  wire grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_ready;
  wire grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg;
  wire grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg_reg;
  wire \i_fu_44_reg_n_0_[0] ;
  wire \i_fu_44_reg_n_0_[10] ;
  wire \i_fu_44_reg_n_0_[11] ;
  wire \i_fu_44_reg_n_0_[12] ;
  wire \i_fu_44_reg_n_0_[13] ;
  wire \i_fu_44_reg_n_0_[14] ;
  wire \i_fu_44_reg_n_0_[15] ;
  wire \i_fu_44_reg_n_0_[16] ;
  wire \i_fu_44_reg_n_0_[17] ;
  wire \i_fu_44_reg_n_0_[18] ;
  wire \i_fu_44_reg_n_0_[19] ;
  wire \i_fu_44_reg_n_0_[1] ;
  wire \i_fu_44_reg_n_0_[20] ;
  wire \i_fu_44_reg_n_0_[21] ;
  wire \i_fu_44_reg_n_0_[22] ;
  wire \i_fu_44_reg_n_0_[23] ;
  wire \i_fu_44_reg_n_0_[24] ;
  wire \i_fu_44_reg_n_0_[25] ;
  wire \i_fu_44_reg_n_0_[26] ;
  wire \i_fu_44_reg_n_0_[27] ;
  wire \i_fu_44_reg_n_0_[28] ;
  wire \i_fu_44_reg_n_0_[29] ;
  wire \i_fu_44_reg_n_0_[2] ;
  wire \i_fu_44_reg_n_0_[30] ;
  wire \i_fu_44_reg_n_0_[3] ;
  wire \i_fu_44_reg_n_0_[4] ;
  wire \i_fu_44_reg_n_0_[5] ;
  wire \i_fu_44_reg_n_0_[6] ;
  wire \i_fu_44_reg_n_0_[7] ;
  wire \i_fu_44_reg_n_0_[8] ;
  wire \i_fu_44_reg_n_0_[9] ;
  wire icmp_ln178_fu_88_p2_carry__0_n_0;
  wire icmp_ln178_fu_88_p2_carry__0_n_1;
  wire icmp_ln178_fu_88_p2_carry__0_n_2;
  wire icmp_ln178_fu_88_p2_carry__0_n_3;
  wire icmp_ln178_fu_88_p2_carry__1_n_0;
  wire icmp_ln178_fu_88_p2_carry__1_n_1;
  wire icmp_ln178_fu_88_p2_carry__1_n_2;
  wire icmp_ln178_fu_88_p2_carry__1_n_3;
  wire [30:0]icmp_ln178_fu_88_p2_carry__2_0;
  wire icmp_ln178_fu_88_p2_carry__2_n_1;
  wire icmp_ln178_fu_88_p2_carry__2_n_2;
  wire icmp_ln178_fu_88_p2_carry__2_n_3;
  wire icmp_ln178_fu_88_p2_carry_n_0;
  wire icmp_ln178_fu_88_p2_carry_n_1;
  wire icmp_ln178_fu_88_p2_carry_n_2;
  wire icmp_ln178_fu_88_p2_carry_n_3;
  wire icmp_ln178_reg_120;
  wire icmp_ln178_reg_76;
  wire p_8_in;
  wire [3:0]NLW_icmp_ln178_fu_88_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln178_fu_88_p2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln178_fu_88_p2_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln178_fu_88_p2_carry__2_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \B_V_data_1_state[1]_i_4 
       (.I0(icmp_ln178_reg_120),
        .I1(ap_enable_reg_pp0_iter1),
        .O(\B_V_data_1_state[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h08FF)) 
    \ap_CS_fsm[3]_i_3 
       (.I0(icmp_ln178_reg_120),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(data_out_TREADY_int_regslice),
        .I3(ap_loop_exit_ready_pp0_iter1_reg),
        .O(\ap_CS_fsm[3]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_sequential_init_U_n_69),
        .Q(ap_enable_reg_pp0_iter1),
        .R(ap_rst_n_inv));
  FDRE ap_loop_exit_ready_pp0_iter1_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_sequential_init_U_n_31),
        .Q(ap_loop_exit_ready_pp0_iter1_reg),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[0] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [0]),
        .Q(D[0]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[100] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [99]),
        .Q(D[100]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[101] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [100]),
        .Q(D[101]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[102] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [101]),
        .Q(D[102]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[103] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [102]),
        .Q(D[103]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[104] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [103]),
        .Q(D[104]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[105] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [104]),
        .Q(D[105]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[106] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [105]),
        .Q(D[106]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[107] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [106]),
        .Q(D[107]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[108] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [107]),
        .Q(D[108]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[109] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [108]),
        .Q(D[109]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[10] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [10]),
        .Q(D[10]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[110] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [109]),
        .Q(D[110]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[111] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [110]),
        .Q(D[111]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[112] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [111]),
        .Q(D[112]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[113] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [112]),
        .Q(D[113]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[114] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [113]),
        .Q(D[114]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[115] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [114]),
        .Q(D[115]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[116] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [115]),
        .Q(D[116]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[117] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [116]),
        .Q(D[117]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[118] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [117]),
        .Q(D[118]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[119] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [118]),
        .Q(D[119]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[11] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [11]),
        .Q(D[11]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[120] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [119]),
        .Q(D[120]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[121] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [120]),
        .Q(D[121]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[122] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [121]),
        .Q(D[122]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[123] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [122]),
        .Q(D[123]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[124] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [123]),
        .Q(D[124]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[125] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [124]),
        .Q(D[125]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[126] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [125]),
        .Q(D[126]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[127] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [126]),
        .Q(D[127]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[12] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [12]),
        .Q(D[12]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[13] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [13]),
        .Q(D[13]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[14] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [14]),
        .Q(D[14]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[15] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [15]),
        .Q(D[15]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[16] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [16]),
        .Q(D[16]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[17] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [17]),
        .Q(D[17]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[18] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [18]),
        .Q(D[18]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[19] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [19]),
        .Q(D[19]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[1] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [1]),
        .Q(D[1]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[20] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [20]),
        .Q(D[20]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[21] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [21]),
        .Q(D[21]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[22] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [22]),
        .Q(D[22]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[23] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [23]),
        .Q(D[23]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[24] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [24]),
        .Q(D[24]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[25] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [25]),
        .Q(D[25]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[26] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [26]),
        .Q(D[26]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[27] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [27]),
        .Q(D[27]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[28] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [28]),
        .Q(D[28]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[29] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [29]),
        .Q(D[29]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[2] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [2]),
        .Q(D[2]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[30] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [30]),
        .Q(D[30]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[31] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [31]),
        .Q(D[31]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[32] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [32]),
        .Q(D[32]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[33] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [33]),
        .Q(D[33]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[34] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [34]),
        .Q(D[34]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[35] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [35]),
        .Q(D[35]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[36] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [36]),
        .Q(D[36]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[37] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [37]),
        .Q(D[37]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[38] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [38]),
        .Q(D[38]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[39] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [39]),
        .Q(D[39]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[3] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [3]),
        .Q(D[3]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[40] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [40]),
        .Q(D[40]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[41] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [41]),
        .Q(D[41]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[42] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [42]),
        .Q(D[42]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[43] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [43]),
        .Q(D[43]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[44] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [44]),
        .Q(D[44]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[45] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [45]),
        .Q(D[45]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[46] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [46]),
        .Q(D[46]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[47] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [47]),
        .Q(D[47]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[48] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [48]),
        .Q(D[48]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[49] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [49]),
        .Q(D[49]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[4] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [4]),
        .Q(D[4]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[50] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [50]),
        .Q(D[50]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[51] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [51]),
        .Q(D[51]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[52] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [52]),
        .Q(D[52]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[53] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [53]),
        .Q(D[53]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[54] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [54]),
        .Q(D[54]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[55] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [55]),
        .Q(D[55]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[56] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [56]),
        .Q(D[56]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[57] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [57]),
        .Q(D[57]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[58] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [58]),
        .Q(D[58]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[59] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [59]),
        .Q(D[59]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[5] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [5]),
        .Q(D[5]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[60] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [60]),
        .Q(D[60]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[61] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [61]),
        .Q(D[61]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[62] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [62]),
        .Q(D[62]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[63] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [63]),
        .Q(D[63]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[64] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(data_in_TDATA_int_regslice),
        .Q(D[64]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[65] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [64]),
        .Q(D[65]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[66] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [65]),
        .Q(D[66]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[67] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [66]),
        .Q(D[67]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[68] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [67]),
        .Q(D[68]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[69] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [68]),
        .Q(D[69]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[6] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [6]),
        .Q(D[6]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[70] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [69]),
        .Q(D[70]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[71] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [70]),
        .Q(D[71]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[72] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [71]),
        .Q(D[72]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[73] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [72]),
        .Q(D[73]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[74] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [73]),
        .Q(D[74]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[75] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [74]),
        .Q(D[75]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[76] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [75]),
        .Q(D[76]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[77] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [76]),
        .Q(D[77]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[78] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [77]),
        .Q(D[78]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[79] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [78]),
        .Q(D[79]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[7] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [7]),
        .Q(D[7]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[80] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [79]),
        .Q(D[80]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[81] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [80]),
        .Q(D[81]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[82] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [81]),
        .Q(D[82]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[83] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [82]),
        .Q(D[83]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[84] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [83]),
        .Q(D[84]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[85] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [84]),
        .Q(D[85]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[86] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [85]),
        .Q(D[86]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[87] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [86]),
        .Q(D[87]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[88] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [87]),
        .Q(D[88]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[89] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [88]),
        .Q(D[89]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[8] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [8]),
        .Q(D[8]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[90] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [89]),
        .Q(D[90]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[91] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [90]),
        .Q(D[91]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[92] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [91]),
        .Q(D[92]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[93] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [92]),
        .Q(D[93]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[94] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [93]),
        .Q(D[94]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[95] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [94]),
        .Q(D[95]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[96] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [95]),
        .Q(D[96]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[97] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [96]),
        .Q(D[97]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[98] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [97]),
        .Q(D[98]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[99] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [98]),
        .Q(D[99]),
        .R(1'b0));
  FDRE \data_in_read_reg_124_reg[9] 
       (.C(ap_clk),
        .CE(p_8_in),
        .D(\data_in_read_reg_124_reg[127]_0 [9]),
        .Q(D[9]),
        .R(1'b0));
  design_1_paillier_fl_kernel_0_0_paillier_fl_kernel_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U
       (.B_V_data_1_sel_rd_reg(\B_V_data_1_state[1]_i_4_n_0 ),
        .B_V_data_1_sel_wr(B_V_data_1_sel_wr),
        .\B_V_data_1_state_reg[0] (\B_V_data_1_state_reg[0] ),
        .\B_V_data_1_state_reg[0]_0 (\B_V_data_1_state_reg[0]_0 ),
        .\B_V_data_1_state_reg[0]_1 (flow_control_loop_pipe_sequential_init_U_n_69),
        .\B_V_data_1_state_reg[0]_2 (flow_control_loop_pipe_sequential_init_U_n_70),
        .\B_V_data_1_state_reg[1] (\B_V_data_1_state_reg[1] ),
        .CO(CO),
        .D(add_ln178_fu_94_p2),
        .DI({flow_control_loop_pipe_sequential_init_U_n_53,flow_control_loop_pipe_sequential_init_U_n_54,flow_control_loop_pipe_sequential_init_U_n_55,flow_control_loop_pipe_sequential_init_U_n_56}),
        .E(p_8_in),
        .Q(Q),
        .S({flow_control_loop_pipe_sequential_init_U_n_37,flow_control_loop_pipe_sequential_init_U_n_38,flow_control_loop_pipe_sequential_init_U_n_39,flow_control_loop_pipe_sequential_init_U_n_40}),
        .SR(flow_control_loop_pipe_sequential_init_U_n_33),
        .\ap_CS_fsm_reg[2] (\ap_CS_fsm_reg[2] ),
        .\ap_CS_fsm_reg[3] (\ap_CS_fsm[3]_i_3_n_0 ),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_loop_exit_ready_pp0_iter1_reg(ap_loop_exit_ready_pp0_iter1_reg),
        .ap_loop_exit_ready_pp0_iter1_reg_reg(flow_control_loop_pipe_sequential_init_U_n_31),
        .ap_loop_exit_ready_pp0_iter1_reg_reg_0(ap_loop_exit_ready_pp0_iter1_reg_reg_0),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .data_in_TVALID_int_regslice(data_in_TVALID_int_regslice),
        .data_out_TREADY_int_regslice(data_out_TREADY_int_regslice),
        .grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_ready(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_ready),
        .grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg_reg({flow_control_loop_pipe_sequential_init_U_n_57,flow_control_loop_pipe_sequential_init_U_n_58,flow_control_loop_pipe_sequential_init_U_n_59,flow_control_loop_pipe_sequential_init_U_n_60}),
        .grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg_reg_0({flow_control_loop_pipe_sequential_init_U_n_61,flow_control_loop_pipe_sequential_init_U_n_62,flow_control_loop_pipe_sequential_init_U_n_63,flow_control_loop_pipe_sequential_init_U_n_64}),
        .\i_fu_44_reg[15] ({flow_control_loop_pipe_sequential_init_U_n_45,flow_control_loop_pipe_sequential_init_U_n_46,flow_control_loop_pipe_sequential_init_U_n_47,flow_control_loop_pipe_sequential_init_U_n_48}),
        .\i_fu_44_reg[23] ({flow_control_loop_pipe_sequential_init_U_n_41,flow_control_loop_pipe_sequential_init_U_n_42,flow_control_loop_pipe_sequential_init_U_n_43,flow_control_loop_pipe_sequential_init_U_n_44}),
        .\i_fu_44_reg[30] ({\i_fu_44_reg_n_0_[30] ,\i_fu_44_reg_n_0_[29] ,\i_fu_44_reg_n_0_[28] ,\i_fu_44_reg_n_0_[27] ,\i_fu_44_reg_n_0_[26] ,\i_fu_44_reg_n_0_[25] ,\i_fu_44_reg_n_0_[24] ,\i_fu_44_reg_n_0_[23] ,\i_fu_44_reg_n_0_[22] ,\i_fu_44_reg_n_0_[21] ,\i_fu_44_reg_n_0_[20] ,\i_fu_44_reg_n_0_[19] ,\i_fu_44_reg_n_0_[18] ,\i_fu_44_reg_n_0_[17] ,\i_fu_44_reg_n_0_[16] ,\i_fu_44_reg_n_0_[15] ,\i_fu_44_reg_n_0_[14] ,\i_fu_44_reg_n_0_[13] ,\i_fu_44_reg_n_0_[12] ,\i_fu_44_reg_n_0_[11] ,\i_fu_44_reg_n_0_[10] ,\i_fu_44_reg_n_0_[9] ,\i_fu_44_reg_n_0_[8] ,\i_fu_44_reg_n_0_[7] ,\i_fu_44_reg_n_0_[6] ,\i_fu_44_reg_n_0_[5] ,\i_fu_44_reg_n_0_[4] ,\i_fu_44_reg_n_0_[3] ,\i_fu_44_reg_n_0_[2] ,\i_fu_44_reg_n_0_[1] ,\i_fu_44_reg_n_0_[0] }),
        .\i_fu_44_reg[7] ({flow_control_loop_pipe_sequential_init_U_n_49,flow_control_loop_pipe_sequential_init_U_n_50,flow_control_loop_pipe_sequential_init_U_n_51,flow_control_loop_pipe_sequential_init_U_n_52}),
        .icmp_ln178_fu_88_p2_carry__2(icmp_ln178_fu_88_p2_carry__2_0),
        .icmp_ln178_reg_120(icmp_ln178_reg_120),
        .icmp_ln178_reg_76(icmp_ln178_reg_76),
        .\trunc_ln163_reg_71_reg[30] ({flow_control_loop_pipe_sequential_init_U_n_65,flow_control_loop_pipe_sequential_init_U_n_66,flow_control_loop_pipe_sequential_init_U_n_67,flow_control_loop_pipe_sequential_init_U_n_68}));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h80AAAAAA)) 
    \i_fu_44[30]_i_5 
       (.I0(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .I1(data_out_TREADY_int_regslice),
        .I2(Q),
        .I3(icmp_ln178_reg_120),
        .I4(ap_enable_reg_pp0_iter1),
        .O(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg_reg));
  FDRE \i_fu_44_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(add_ln178_fu_94_p2[0]),
        .Q(\i_fu_44_reg_n_0_[0] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_33));
  FDRE \i_fu_44_reg[10] 
       (.C(ap_clk),
        .CE(E),
        .D(add_ln178_fu_94_p2[10]),
        .Q(\i_fu_44_reg_n_0_[10] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_33));
  FDRE \i_fu_44_reg[11] 
       (.C(ap_clk),
        .CE(E),
        .D(add_ln178_fu_94_p2[11]),
        .Q(\i_fu_44_reg_n_0_[11] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_33));
  FDRE \i_fu_44_reg[12] 
       (.C(ap_clk),
        .CE(E),
        .D(add_ln178_fu_94_p2[12]),
        .Q(\i_fu_44_reg_n_0_[12] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_33));
  FDRE \i_fu_44_reg[13] 
       (.C(ap_clk),
        .CE(E),
        .D(add_ln178_fu_94_p2[13]),
        .Q(\i_fu_44_reg_n_0_[13] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_33));
  FDRE \i_fu_44_reg[14] 
       (.C(ap_clk),
        .CE(E),
        .D(add_ln178_fu_94_p2[14]),
        .Q(\i_fu_44_reg_n_0_[14] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_33));
  FDRE \i_fu_44_reg[15] 
       (.C(ap_clk),
        .CE(E),
        .D(add_ln178_fu_94_p2[15]),
        .Q(\i_fu_44_reg_n_0_[15] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_33));
  FDRE \i_fu_44_reg[16] 
       (.C(ap_clk),
        .CE(E),
        .D(add_ln178_fu_94_p2[16]),
        .Q(\i_fu_44_reg_n_0_[16] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_33));
  FDRE \i_fu_44_reg[17] 
       (.C(ap_clk),
        .CE(E),
        .D(add_ln178_fu_94_p2[17]),
        .Q(\i_fu_44_reg_n_0_[17] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_33));
  FDRE \i_fu_44_reg[18] 
       (.C(ap_clk),
        .CE(E),
        .D(add_ln178_fu_94_p2[18]),
        .Q(\i_fu_44_reg_n_0_[18] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_33));
  FDRE \i_fu_44_reg[19] 
       (.C(ap_clk),
        .CE(E),
        .D(add_ln178_fu_94_p2[19]),
        .Q(\i_fu_44_reg_n_0_[19] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_33));
  FDRE \i_fu_44_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(add_ln178_fu_94_p2[1]),
        .Q(\i_fu_44_reg_n_0_[1] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_33));
  FDRE \i_fu_44_reg[20] 
       (.C(ap_clk),
        .CE(E),
        .D(add_ln178_fu_94_p2[20]),
        .Q(\i_fu_44_reg_n_0_[20] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_33));
  FDRE \i_fu_44_reg[21] 
       (.C(ap_clk),
        .CE(E),
        .D(add_ln178_fu_94_p2[21]),
        .Q(\i_fu_44_reg_n_0_[21] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_33));
  FDRE \i_fu_44_reg[22] 
       (.C(ap_clk),
        .CE(E),
        .D(add_ln178_fu_94_p2[22]),
        .Q(\i_fu_44_reg_n_0_[22] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_33));
  FDRE \i_fu_44_reg[23] 
       (.C(ap_clk),
        .CE(E),
        .D(add_ln178_fu_94_p2[23]),
        .Q(\i_fu_44_reg_n_0_[23] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_33));
  FDRE \i_fu_44_reg[24] 
       (.C(ap_clk),
        .CE(E),
        .D(add_ln178_fu_94_p2[24]),
        .Q(\i_fu_44_reg_n_0_[24] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_33));
  FDRE \i_fu_44_reg[25] 
       (.C(ap_clk),
        .CE(E),
        .D(add_ln178_fu_94_p2[25]),
        .Q(\i_fu_44_reg_n_0_[25] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_33));
  FDRE \i_fu_44_reg[26] 
       (.C(ap_clk),
        .CE(E),
        .D(add_ln178_fu_94_p2[26]),
        .Q(\i_fu_44_reg_n_0_[26] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_33));
  FDRE \i_fu_44_reg[27] 
       (.C(ap_clk),
        .CE(E),
        .D(add_ln178_fu_94_p2[27]),
        .Q(\i_fu_44_reg_n_0_[27] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_33));
  FDRE \i_fu_44_reg[28] 
       (.C(ap_clk),
        .CE(E),
        .D(add_ln178_fu_94_p2[28]),
        .Q(\i_fu_44_reg_n_0_[28] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_33));
  FDRE \i_fu_44_reg[29] 
       (.C(ap_clk),
        .CE(E),
        .D(add_ln178_fu_94_p2[29]),
        .Q(\i_fu_44_reg_n_0_[29] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_33));
  FDRE \i_fu_44_reg[2] 
       (.C(ap_clk),
        .CE(E),
        .D(add_ln178_fu_94_p2[2]),
        .Q(\i_fu_44_reg_n_0_[2] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_33));
  FDRE \i_fu_44_reg[30] 
       (.C(ap_clk),
        .CE(E),
        .D(add_ln178_fu_94_p2[30]),
        .Q(\i_fu_44_reg_n_0_[30] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_33));
  FDRE \i_fu_44_reg[3] 
       (.C(ap_clk),
        .CE(E),
        .D(add_ln178_fu_94_p2[3]),
        .Q(\i_fu_44_reg_n_0_[3] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_33));
  FDRE \i_fu_44_reg[4] 
       (.C(ap_clk),
        .CE(E),
        .D(add_ln178_fu_94_p2[4]),
        .Q(\i_fu_44_reg_n_0_[4] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_33));
  FDRE \i_fu_44_reg[5] 
       (.C(ap_clk),
        .CE(E),
        .D(add_ln178_fu_94_p2[5]),
        .Q(\i_fu_44_reg_n_0_[5] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_33));
  FDRE \i_fu_44_reg[6] 
       (.C(ap_clk),
        .CE(E),
        .D(add_ln178_fu_94_p2[6]),
        .Q(\i_fu_44_reg_n_0_[6] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_33));
  FDRE \i_fu_44_reg[7] 
       (.C(ap_clk),
        .CE(E),
        .D(add_ln178_fu_94_p2[7]),
        .Q(\i_fu_44_reg_n_0_[7] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_33));
  FDRE \i_fu_44_reg[8] 
       (.C(ap_clk),
        .CE(E),
        .D(add_ln178_fu_94_p2[8]),
        .Q(\i_fu_44_reg_n_0_[8] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_33));
  FDRE \i_fu_44_reg[9] 
       (.C(ap_clk),
        .CE(E),
        .D(add_ln178_fu_94_p2[9]),
        .Q(\i_fu_44_reg_n_0_[9] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_33));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln178_fu_88_p2_carry
       (.CI(1'b0),
        .CO({icmp_ln178_fu_88_p2_carry_n_0,icmp_ln178_fu_88_p2_carry_n_1,icmp_ln178_fu_88_p2_carry_n_2,icmp_ln178_fu_88_p2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({flow_control_loop_pipe_sequential_init_U_n_53,flow_control_loop_pipe_sequential_init_U_n_54,flow_control_loop_pipe_sequential_init_U_n_55,flow_control_loop_pipe_sequential_init_U_n_56}),
        .O(NLW_icmp_ln178_fu_88_p2_carry_O_UNCONNECTED[3:0]),
        .S({flow_control_loop_pipe_sequential_init_U_n_49,flow_control_loop_pipe_sequential_init_U_n_50,flow_control_loop_pipe_sequential_init_U_n_51,flow_control_loop_pipe_sequential_init_U_n_52}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln178_fu_88_p2_carry__0
       (.CI(icmp_ln178_fu_88_p2_carry_n_0),
        .CO({icmp_ln178_fu_88_p2_carry__0_n_0,icmp_ln178_fu_88_p2_carry__0_n_1,icmp_ln178_fu_88_p2_carry__0_n_2,icmp_ln178_fu_88_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({flow_control_loop_pipe_sequential_init_U_n_57,flow_control_loop_pipe_sequential_init_U_n_58,flow_control_loop_pipe_sequential_init_U_n_59,flow_control_loop_pipe_sequential_init_U_n_60}),
        .O(NLW_icmp_ln178_fu_88_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({flow_control_loop_pipe_sequential_init_U_n_45,flow_control_loop_pipe_sequential_init_U_n_46,flow_control_loop_pipe_sequential_init_U_n_47,flow_control_loop_pipe_sequential_init_U_n_48}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln178_fu_88_p2_carry__1
       (.CI(icmp_ln178_fu_88_p2_carry__0_n_0),
        .CO({icmp_ln178_fu_88_p2_carry__1_n_0,icmp_ln178_fu_88_p2_carry__1_n_1,icmp_ln178_fu_88_p2_carry__1_n_2,icmp_ln178_fu_88_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({flow_control_loop_pipe_sequential_init_U_n_61,flow_control_loop_pipe_sequential_init_U_n_62,flow_control_loop_pipe_sequential_init_U_n_63,flow_control_loop_pipe_sequential_init_U_n_64}),
        .O(NLW_icmp_ln178_fu_88_p2_carry__1_O_UNCONNECTED[3:0]),
        .S({flow_control_loop_pipe_sequential_init_U_n_41,flow_control_loop_pipe_sequential_init_U_n_42,flow_control_loop_pipe_sequential_init_U_n_43,flow_control_loop_pipe_sequential_init_U_n_44}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln178_fu_88_p2_carry__2
       (.CI(icmp_ln178_fu_88_p2_carry__1_n_0),
        .CO({CO,icmp_ln178_fu_88_p2_carry__2_n_1,icmp_ln178_fu_88_p2_carry__2_n_2,icmp_ln178_fu_88_p2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({flow_control_loop_pipe_sequential_init_U_n_65,flow_control_loop_pipe_sequential_init_U_n_66,flow_control_loop_pipe_sequential_init_U_n_67,flow_control_loop_pipe_sequential_init_U_n_68}),
        .O(NLW_icmp_ln178_fu_88_p2_carry__2_O_UNCONNECTED[3:0]),
        .S({flow_control_loop_pipe_sequential_init_U_n_37,flow_control_loop_pipe_sequential_init_U_n_38,flow_control_loop_pipe_sequential_init_U_n_39,flow_control_loop_pipe_sequential_init_U_n_40}));
  FDRE \icmp_ln178_reg_120_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_sequential_init_U_n_70),
        .Q(icmp_ln178_reg_120),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "paillier_fl_kernel_regslice_both" *) 
module design_1_paillier_fl_kernel_0_0_paillier_fl_kernel_regslice_both
   (\B_V_data_1_state_reg[1]_0 ,
    data_in_TVALID_int_regslice,
    grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_ready,
    E,
    \B_V_data_1_payload_B_reg[127]_0 ,
    \B_V_data_1_payload_A_reg[64]_0 ,
    data_in_TDATA_int_regslice,
    \ap_CS_fsm_reg[1] ,
    ap_rst_n_inv,
    ap_clk,
    \i_fu_44_reg[30] ,
    CO,
    ap_rst_n,
    data_in_TVALID,
    B_V_data_1_sel_rd_reg_0,
    Q,
    grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg,
    data_in_TDATA);
  output \B_V_data_1_state_reg[1]_0 ;
  output data_in_TVALID_int_regslice;
  output grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_ready;
  output [0:0]E;
  output [126:0]\B_V_data_1_payload_B_reg[127]_0 ;
  output \B_V_data_1_payload_A_reg[64]_0 ;
  output [0:0]data_in_TDATA_int_regslice;
  output \ap_CS_fsm_reg[1] ;
  input ap_rst_n_inv;
  input ap_clk;
  input \i_fu_44_reg[30] ;
  input [0:0]CO;
  input ap_rst_n;
  input data_in_TVALID;
  input B_V_data_1_sel_rd_reg_0;
  input [0:0]Q;
  input grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg;
  input [127:0]data_in_TDATA;

  wire B_V_data_1_load_A;
  wire B_V_data_1_load_B;
  wire [127:0]B_V_data_1_payload_A;
  wire \B_V_data_1_payload_A_reg[64]_0 ;
  wire [127:0]B_V_data_1_payload_B;
  wire [126:0]\B_V_data_1_payload_B_reg[127]_0 ;
  wire B_V_data_1_sel;
  wire B_V_data_1_sel_rd_i_1_n_0;
  wire B_V_data_1_sel_rd_reg_0;
  wire B_V_data_1_sel_wr;
  wire B_V_data_1_sel_wr_i_1__0_n_0;
  wire [1:1]B_V_data_1_state;
  wire \B_V_data_1_state[0]_i_1__0_n_0 ;
  wire \B_V_data_1_state_reg[1]_0 ;
  wire [0:0]CO;
  wire [0:0]E;
  wire [0:0]Q;
  wire \ap_CS_fsm_reg[1] ;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [127:0]data_in_TDATA;
  wire [0:0]data_in_TDATA_int_regslice;
  wire data_in_TVALID;
  wire data_in_TVALID_int_regslice;
  wire grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_ready;
  wire grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg;
  wire \i_fu_44_reg[30] ;

  LUT3 #(
    .INIT(8'h45)) 
    \B_V_data_1_payload_A[127]_i_1__0 
       (.I0(B_V_data_1_sel_wr),
        .I1(\B_V_data_1_state_reg[1]_0 ),
        .I2(data_in_TVALID_int_regslice),
        .O(B_V_data_1_load_A));
  FDRE \B_V_data_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[0]),
        .Q(B_V_data_1_payload_A[0]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[100] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[100]),
        .Q(B_V_data_1_payload_A[100]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[101] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[101]),
        .Q(B_V_data_1_payload_A[101]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[102] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[102]),
        .Q(B_V_data_1_payload_A[102]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[103] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[103]),
        .Q(B_V_data_1_payload_A[103]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[104] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[104]),
        .Q(B_V_data_1_payload_A[104]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[105] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[105]),
        .Q(B_V_data_1_payload_A[105]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[106] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[106]),
        .Q(B_V_data_1_payload_A[106]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[107] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[107]),
        .Q(B_V_data_1_payload_A[107]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[108] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[108]),
        .Q(B_V_data_1_payload_A[108]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[109] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[109]),
        .Q(B_V_data_1_payload_A[109]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[10]),
        .Q(B_V_data_1_payload_A[10]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[110] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[110]),
        .Q(B_V_data_1_payload_A[110]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[111] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[111]),
        .Q(B_V_data_1_payload_A[111]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[112] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[112]),
        .Q(B_V_data_1_payload_A[112]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[113] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[113]),
        .Q(B_V_data_1_payload_A[113]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[114] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[114]),
        .Q(B_V_data_1_payload_A[114]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[115] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[115]),
        .Q(B_V_data_1_payload_A[115]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[116] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[116]),
        .Q(B_V_data_1_payload_A[116]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[117] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[117]),
        .Q(B_V_data_1_payload_A[117]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[118] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[118]),
        .Q(B_V_data_1_payload_A[118]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[119] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[119]),
        .Q(B_V_data_1_payload_A[119]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[11]),
        .Q(B_V_data_1_payload_A[11]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[120] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[120]),
        .Q(B_V_data_1_payload_A[120]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[121] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[121]),
        .Q(B_V_data_1_payload_A[121]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[122] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[122]),
        .Q(B_V_data_1_payload_A[122]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[123] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[123]),
        .Q(B_V_data_1_payload_A[123]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[124] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[124]),
        .Q(B_V_data_1_payload_A[124]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[125] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[125]),
        .Q(B_V_data_1_payload_A[125]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[126] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[126]),
        .Q(B_V_data_1_payload_A[126]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[127] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[127]),
        .Q(B_V_data_1_payload_A[127]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[12]),
        .Q(B_V_data_1_payload_A[12]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[13]),
        .Q(B_V_data_1_payload_A[13]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[14]),
        .Q(B_V_data_1_payload_A[14]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[15]),
        .Q(B_V_data_1_payload_A[15]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[16] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[16]),
        .Q(B_V_data_1_payload_A[16]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[17] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[17]),
        .Q(B_V_data_1_payload_A[17]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[18] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[18]),
        .Q(B_V_data_1_payload_A[18]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[19] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[19]),
        .Q(B_V_data_1_payload_A[19]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[1]),
        .Q(B_V_data_1_payload_A[1]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[20] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[20]),
        .Q(B_V_data_1_payload_A[20]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[21] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[21]),
        .Q(B_V_data_1_payload_A[21]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[22] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[22]),
        .Q(B_V_data_1_payload_A[22]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[23] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[23]),
        .Q(B_V_data_1_payload_A[23]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[24] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[24]),
        .Q(B_V_data_1_payload_A[24]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[25] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[25]),
        .Q(B_V_data_1_payload_A[25]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[26] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[26]),
        .Q(B_V_data_1_payload_A[26]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[27] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[27]),
        .Q(B_V_data_1_payload_A[27]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[28] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[28]),
        .Q(B_V_data_1_payload_A[28]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[29] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[29]),
        .Q(B_V_data_1_payload_A[29]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[2]),
        .Q(B_V_data_1_payload_A[2]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[30] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[30]),
        .Q(B_V_data_1_payload_A[30]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[31] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[31]),
        .Q(B_V_data_1_payload_A[31]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[32] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[32]),
        .Q(B_V_data_1_payload_A[32]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[33] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[33]),
        .Q(B_V_data_1_payload_A[33]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[34] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[34]),
        .Q(B_V_data_1_payload_A[34]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[35] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[35]),
        .Q(B_V_data_1_payload_A[35]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[36] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[36]),
        .Q(B_V_data_1_payload_A[36]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[37] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[37]),
        .Q(B_V_data_1_payload_A[37]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[38] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[38]),
        .Q(B_V_data_1_payload_A[38]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[39] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[39]),
        .Q(B_V_data_1_payload_A[39]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[3]),
        .Q(B_V_data_1_payload_A[3]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[40] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[40]),
        .Q(B_V_data_1_payload_A[40]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[41] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[41]),
        .Q(B_V_data_1_payload_A[41]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[42] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[42]),
        .Q(B_V_data_1_payload_A[42]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[43] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[43]),
        .Q(B_V_data_1_payload_A[43]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[44] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[44]),
        .Q(B_V_data_1_payload_A[44]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[45] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[45]),
        .Q(B_V_data_1_payload_A[45]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[46] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[46]),
        .Q(B_V_data_1_payload_A[46]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[47] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[47]),
        .Q(B_V_data_1_payload_A[47]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[48] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[48]),
        .Q(B_V_data_1_payload_A[48]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[49] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[49]),
        .Q(B_V_data_1_payload_A[49]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[4]),
        .Q(B_V_data_1_payload_A[4]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[50] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[50]),
        .Q(B_V_data_1_payload_A[50]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[51] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[51]),
        .Q(B_V_data_1_payload_A[51]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[52] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[52]),
        .Q(B_V_data_1_payload_A[52]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[53] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[53]),
        .Q(B_V_data_1_payload_A[53]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[54] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[54]),
        .Q(B_V_data_1_payload_A[54]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[55] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[55]),
        .Q(B_V_data_1_payload_A[55]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[56] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[56]),
        .Q(B_V_data_1_payload_A[56]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[57] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[57]),
        .Q(B_V_data_1_payload_A[57]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[58] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[58]),
        .Q(B_V_data_1_payload_A[58]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[59] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[59]),
        .Q(B_V_data_1_payload_A[59]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[5]),
        .Q(B_V_data_1_payload_A[5]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[60] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[60]),
        .Q(B_V_data_1_payload_A[60]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[61] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[61]),
        .Q(B_V_data_1_payload_A[61]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[62] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[62]),
        .Q(B_V_data_1_payload_A[62]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[63] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[63]),
        .Q(B_V_data_1_payload_A[63]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[64] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[64]),
        .Q(B_V_data_1_payload_A[64]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[65] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[65]),
        .Q(B_V_data_1_payload_A[65]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[66] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[66]),
        .Q(B_V_data_1_payload_A[66]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[67] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[67]),
        .Q(B_V_data_1_payload_A[67]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[68] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[68]),
        .Q(B_V_data_1_payload_A[68]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[69] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[69]),
        .Q(B_V_data_1_payload_A[69]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[6]),
        .Q(B_V_data_1_payload_A[6]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[70] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[70]),
        .Q(B_V_data_1_payload_A[70]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[71] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[71]),
        .Q(B_V_data_1_payload_A[71]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[72] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[72]),
        .Q(B_V_data_1_payload_A[72]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[73] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[73]),
        .Q(B_V_data_1_payload_A[73]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[74] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[74]),
        .Q(B_V_data_1_payload_A[74]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[75] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[75]),
        .Q(B_V_data_1_payload_A[75]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[76] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[76]),
        .Q(B_V_data_1_payload_A[76]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[77] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[77]),
        .Q(B_V_data_1_payload_A[77]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[78] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[78]),
        .Q(B_V_data_1_payload_A[78]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[79] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[79]),
        .Q(B_V_data_1_payload_A[79]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[7]),
        .Q(B_V_data_1_payload_A[7]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[80] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[80]),
        .Q(B_V_data_1_payload_A[80]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[81] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[81]),
        .Q(B_V_data_1_payload_A[81]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[82] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[82]),
        .Q(B_V_data_1_payload_A[82]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[83] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[83]),
        .Q(B_V_data_1_payload_A[83]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[84] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[84]),
        .Q(B_V_data_1_payload_A[84]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[85] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[85]),
        .Q(B_V_data_1_payload_A[85]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[86] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[86]),
        .Q(B_V_data_1_payload_A[86]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[87] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[87]),
        .Q(B_V_data_1_payload_A[87]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[88] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[88]),
        .Q(B_V_data_1_payload_A[88]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[89] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[89]),
        .Q(B_V_data_1_payload_A[89]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[8]),
        .Q(B_V_data_1_payload_A[8]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[90] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[90]),
        .Q(B_V_data_1_payload_A[90]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[91] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[91]),
        .Q(B_V_data_1_payload_A[91]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[92] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[92]),
        .Q(B_V_data_1_payload_A[92]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[93] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[93]),
        .Q(B_V_data_1_payload_A[93]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[94] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[94]),
        .Q(B_V_data_1_payload_A[94]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[95] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[95]),
        .Q(B_V_data_1_payload_A[95]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[96] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[96]),
        .Q(B_V_data_1_payload_A[96]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[97] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[97]),
        .Q(B_V_data_1_payload_A[97]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[98] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[98]),
        .Q(B_V_data_1_payload_A[98]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[99] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[99]),
        .Q(B_V_data_1_payload_A[99]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(data_in_TDATA[9]),
        .Q(B_V_data_1_payload_A[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8A)) 
    \B_V_data_1_payload_B[127]_i_1__0 
       (.I0(B_V_data_1_sel_wr),
        .I1(\B_V_data_1_state_reg[1]_0 ),
        .I2(data_in_TVALID_int_regslice),
        .O(B_V_data_1_load_B));
  FDRE \B_V_data_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[0]),
        .Q(B_V_data_1_payload_B[0]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[100] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[100]),
        .Q(B_V_data_1_payload_B[100]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[101] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[101]),
        .Q(B_V_data_1_payload_B[101]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[102] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[102]),
        .Q(B_V_data_1_payload_B[102]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[103] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[103]),
        .Q(B_V_data_1_payload_B[103]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[104] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[104]),
        .Q(B_V_data_1_payload_B[104]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[105] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[105]),
        .Q(B_V_data_1_payload_B[105]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[106] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[106]),
        .Q(B_V_data_1_payload_B[106]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[107] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[107]),
        .Q(B_V_data_1_payload_B[107]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[108] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[108]),
        .Q(B_V_data_1_payload_B[108]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[109] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[109]),
        .Q(B_V_data_1_payload_B[109]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[10]),
        .Q(B_V_data_1_payload_B[10]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[110] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[110]),
        .Q(B_V_data_1_payload_B[110]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[111] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[111]),
        .Q(B_V_data_1_payload_B[111]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[112] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[112]),
        .Q(B_V_data_1_payload_B[112]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[113] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[113]),
        .Q(B_V_data_1_payload_B[113]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[114] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[114]),
        .Q(B_V_data_1_payload_B[114]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[115] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[115]),
        .Q(B_V_data_1_payload_B[115]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[116] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[116]),
        .Q(B_V_data_1_payload_B[116]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[117] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[117]),
        .Q(B_V_data_1_payload_B[117]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[118] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[118]),
        .Q(B_V_data_1_payload_B[118]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[119] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[119]),
        .Q(B_V_data_1_payload_B[119]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[11]),
        .Q(B_V_data_1_payload_B[11]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[120] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[120]),
        .Q(B_V_data_1_payload_B[120]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[121] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[121]),
        .Q(B_V_data_1_payload_B[121]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[122] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[122]),
        .Q(B_V_data_1_payload_B[122]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[123] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[123]),
        .Q(B_V_data_1_payload_B[123]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[124] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[124]),
        .Q(B_V_data_1_payload_B[124]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[125] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[125]),
        .Q(B_V_data_1_payload_B[125]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[126] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[126]),
        .Q(B_V_data_1_payload_B[126]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[127] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[127]),
        .Q(B_V_data_1_payload_B[127]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[12]),
        .Q(B_V_data_1_payload_B[12]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[13]),
        .Q(B_V_data_1_payload_B[13]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[14]),
        .Q(B_V_data_1_payload_B[14]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[15]),
        .Q(B_V_data_1_payload_B[15]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[16] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[16]),
        .Q(B_V_data_1_payload_B[16]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[17] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[17]),
        .Q(B_V_data_1_payload_B[17]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[18] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[18]),
        .Q(B_V_data_1_payload_B[18]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[19] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[19]),
        .Q(B_V_data_1_payload_B[19]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[1]),
        .Q(B_V_data_1_payload_B[1]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[20] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[20]),
        .Q(B_V_data_1_payload_B[20]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[21] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[21]),
        .Q(B_V_data_1_payload_B[21]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[22] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[22]),
        .Q(B_V_data_1_payload_B[22]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[23] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[23]),
        .Q(B_V_data_1_payload_B[23]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[24] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[24]),
        .Q(B_V_data_1_payload_B[24]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[25] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[25]),
        .Q(B_V_data_1_payload_B[25]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[26] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[26]),
        .Q(B_V_data_1_payload_B[26]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[27] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[27]),
        .Q(B_V_data_1_payload_B[27]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[28] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[28]),
        .Q(B_V_data_1_payload_B[28]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[29] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[29]),
        .Q(B_V_data_1_payload_B[29]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[2]),
        .Q(B_V_data_1_payload_B[2]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[30] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[30]),
        .Q(B_V_data_1_payload_B[30]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[31] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[31]),
        .Q(B_V_data_1_payload_B[31]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[32] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[32]),
        .Q(B_V_data_1_payload_B[32]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[33] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[33]),
        .Q(B_V_data_1_payload_B[33]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[34] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[34]),
        .Q(B_V_data_1_payload_B[34]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[35] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[35]),
        .Q(B_V_data_1_payload_B[35]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[36] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[36]),
        .Q(B_V_data_1_payload_B[36]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[37] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[37]),
        .Q(B_V_data_1_payload_B[37]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[38] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[38]),
        .Q(B_V_data_1_payload_B[38]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[39] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[39]),
        .Q(B_V_data_1_payload_B[39]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[3]),
        .Q(B_V_data_1_payload_B[3]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[40] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[40]),
        .Q(B_V_data_1_payload_B[40]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[41] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[41]),
        .Q(B_V_data_1_payload_B[41]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[42] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[42]),
        .Q(B_V_data_1_payload_B[42]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[43] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[43]),
        .Q(B_V_data_1_payload_B[43]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[44] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[44]),
        .Q(B_V_data_1_payload_B[44]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[45] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[45]),
        .Q(B_V_data_1_payload_B[45]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[46] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[46]),
        .Q(B_V_data_1_payload_B[46]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[47] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[47]),
        .Q(B_V_data_1_payload_B[47]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[48] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[48]),
        .Q(B_V_data_1_payload_B[48]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[49] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[49]),
        .Q(B_V_data_1_payload_B[49]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[4]),
        .Q(B_V_data_1_payload_B[4]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[50] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[50]),
        .Q(B_V_data_1_payload_B[50]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[51] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[51]),
        .Q(B_V_data_1_payload_B[51]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[52] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[52]),
        .Q(B_V_data_1_payload_B[52]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[53] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[53]),
        .Q(B_V_data_1_payload_B[53]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[54] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[54]),
        .Q(B_V_data_1_payload_B[54]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[55] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[55]),
        .Q(B_V_data_1_payload_B[55]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[56] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[56]),
        .Q(B_V_data_1_payload_B[56]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[57] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[57]),
        .Q(B_V_data_1_payload_B[57]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[58] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[58]),
        .Q(B_V_data_1_payload_B[58]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[59] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[59]),
        .Q(B_V_data_1_payload_B[59]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[5]),
        .Q(B_V_data_1_payload_B[5]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[60] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[60]),
        .Q(B_V_data_1_payload_B[60]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[61] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[61]),
        .Q(B_V_data_1_payload_B[61]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[62] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[62]),
        .Q(B_V_data_1_payload_B[62]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[63] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[63]),
        .Q(B_V_data_1_payload_B[63]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[64] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[64]),
        .Q(B_V_data_1_payload_B[64]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[65] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[65]),
        .Q(B_V_data_1_payload_B[65]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[66] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[66]),
        .Q(B_V_data_1_payload_B[66]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[67] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[67]),
        .Q(B_V_data_1_payload_B[67]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[68] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[68]),
        .Q(B_V_data_1_payload_B[68]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[69] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[69]),
        .Q(B_V_data_1_payload_B[69]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[6]),
        .Q(B_V_data_1_payload_B[6]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[70] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[70]),
        .Q(B_V_data_1_payload_B[70]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[71] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[71]),
        .Q(B_V_data_1_payload_B[71]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[72] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[72]),
        .Q(B_V_data_1_payload_B[72]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[73] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[73]),
        .Q(B_V_data_1_payload_B[73]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[74] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[74]),
        .Q(B_V_data_1_payload_B[74]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[75] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[75]),
        .Q(B_V_data_1_payload_B[75]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[76] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[76]),
        .Q(B_V_data_1_payload_B[76]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[77] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[77]),
        .Q(B_V_data_1_payload_B[77]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[78] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[78]),
        .Q(B_V_data_1_payload_B[78]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[79] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[79]),
        .Q(B_V_data_1_payload_B[79]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[7]),
        .Q(B_V_data_1_payload_B[7]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[80] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[80]),
        .Q(B_V_data_1_payload_B[80]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[81] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[81]),
        .Q(B_V_data_1_payload_B[81]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[82] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[82]),
        .Q(B_V_data_1_payload_B[82]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[83] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[83]),
        .Q(B_V_data_1_payload_B[83]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[84] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[84]),
        .Q(B_V_data_1_payload_B[84]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[85] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[85]),
        .Q(B_V_data_1_payload_B[85]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[86] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[86]),
        .Q(B_V_data_1_payload_B[86]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[87] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[87]),
        .Q(B_V_data_1_payload_B[87]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[88] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[88]),
        .Q(B_V_data_1_payload_B[88]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[89] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[89]),
        .Q(B_V_data_1_payload_B[89]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[8]),
        .Q(B_V_data_1_payload_B[8]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[90] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[90]),
        .Q(B_V_data_1_payload_B[90]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[91] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[91]),
        .Q(B_V_data_1_payload_B[91]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[92] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[92]),
        .Q(B_V_data_1_payload_B[92]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[93] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[93]),
        .Q(B_V_data_1_payload_B[93]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[94] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[94]),
        .Q(B_V_data_1_payload_B[94]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[95] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[95]),
        .Q(B_V_data_1_payload_B[95]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[96] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[96]),
        .Q(B_V_data_1_payload_B[96]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[97] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[97]),
        .Q(B_V_data_1_payload_B[97]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[98] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[98]),
        .Q(B_V_data_1_payload_B[98]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[99] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[99]),
        .Q(B_V_data_1_payload_B[99]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(data_in_TDATA[9]),
        .Q(B_V_data_1_payload_B[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_rd_i_1
       (.I0(data_in_TVALID_int_regslice),
        .I1(B_V_data_1_sel_rd_reg_0),
        .I2(B_V_data_1_sel),
        .O(B_V_data_1_sel_rd_i_1_n_0));
  FDRE B_V_data_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_rd_i_1_n_0),
        .Q(B_V_data_1_sel),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_wr_i_1__0
       (.I0(\B_V_data_1_state_reg[1]_0 ),
        .I1(data_in_TVALID),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_sel_wr_i_1__0_n_0));
  FDRE B_V_data_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_wr_i_1__0_n_0),
        .Q(B_V_data_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hA808A888)) 
    \B_V_data_1_state[0]_i_1__0 
       (.I0(ap_rst_n),
        .I1(data_in_TVALID_int_regslice),
        .I2(\B_V_data_1_state_reg[1]_0 ),
        .I3(data_in_TVALID),
        .I4(B_V_data_1_sel_rd_reg_0),
        .O(\B_V_data_1_state[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hDFDD)) 
    \B_V_data_1_state[1]_i_2 
       (.I0(data_in_TVALID_int_regslice),
        .I1(B_V_data_1_sel_rd_reg_0),
        .I2(data_in_TVALID),
        .I3(\B_V_data_1_state_reg[1]_0 ),
        .O(B_V_data_1_state));
  FDRE \B_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[0]_i_1__0_n_0 ),
        .Q(data_in_TVALID_int_regslice),
        .R(1'b0));
  FDRE \B_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_state),
        .Q(\B_V_data_1_state_reg[1]_0 ),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h02A2)) 
    ap_loop_exit_ready_pp0_iter1_reg_i_2
       (.I0(CO),
        .I1(B_V_data_1_payload_A[64]),
        .I2(B_V_data_1_sel),
        .I3(B_V_data_1_payload_B[64]),
        .O(\B_V_data_1_payload_A_reg[64]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[0]_i_1 
       (.I0(B_V_data_1_payload_B[0]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[0]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[100]_i_1 
       (.I0(B_V_data_1_payload_B[100]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[100]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [99]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[101]_i_1 
       (.I0(B_V_data_1_payload_B[101]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[101]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [100]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[102]_i_1 
       (.I0(B_V_data_1_payload_B[102]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[102]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [101]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[103]_i_1 
       (.I0(B_V_data_1_payload_B[103]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[103]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [102]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[104]_i_1 
       (.I0(B_V_data_1_payload_B[104]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[104]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [103]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[105]_i_1 
       (.I0(B_V_data_1_payload_B[105]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[105]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [104]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[106]_i_1 
       (.I0(B_V_data_1_payload_B[106]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[106]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [105]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[107]_i_1 
       (.I0(B_V_data_1_payload_B[107]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[107]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [106]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[108]_i_1 
       (.I0(B_V_data_1_payload_B[108]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[108]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [107]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[109]_i_1 
       (.I0(B_V_data_1_payload_B[109]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[109]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [108]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[10]_i_1 
       (.I0(B_V_data_1_payload_B[10]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[10]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [10]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[110]_i_1 
       (.I0(B_V_data_1_payload_B[110]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[110]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [109]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[111]_i_1 
       (.I0(B_V_data_1_payload_B[111]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[111]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [110]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[112]_i_1 
       (.I0(B_V_data_1_payload_B[112]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[112]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [111]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[113]_i_1 
       (.I0(B_V_data_1_payload_B[113]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[113]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [112]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[114]_i_1 
       (.I0(B_V_data_1_payload_B[114]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[114]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [113]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[115]_i_1 
       (.I0(B_V_data_1_payload_B[115]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[115]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [114]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[116]_i_1 
       (.I0(B_V_data_1_payload_B[116]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[116]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [115]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[117]_i_1 
       (.I0(B_V_data_1_payload_B[117]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[117]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [116]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[118]_i_1 
       (.I0(B_V_data_1_payload_B[118]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[118]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [117]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[119]_i_1 
       (.I0(B_V_data_1_payload_B[119]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[119]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [118]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[11]_i_1 
       (.I0(B_V_data_1_payload_B[11]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[11]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [11]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[120]_i_1 
       (.I0(B_V_data_1_payload_B[120]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[120]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [119]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[121]_i_1 
       (.I0(B_V_data_1_payload_B[121]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[121]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [120]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[122]_i_1 
       (.I0(B_V_data_1_payload_B[122]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[122]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [121]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[123]_i_1 
       (.I0(B_V_data_1_payload_B[123]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[123]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [122]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[124]_i_1 
       (.I0(B_V_data_1_payload_B[124]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[124]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [123]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[125]_i_1 
       (.I0(B_V_data_1_payload_B[125]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[125]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [124]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[126]_i_1 
       (.I0(B_V_data_1_payload_B[126]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[126]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [125]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[127]_i_2 
       (.I0(B_V_data_1_payload_B[127]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[127]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [126]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[12]_i_1 
       (.I0(B_V_data_1_payload_B[12]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[12]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [12]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[13]_i_1 
       (.I0(B_V_data_1_payload_B[13]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[13]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [13]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[14]_i_1 
       (.I0(B_V_data_1_payload_B[14]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[14]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [14]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[15]_i_1 
       (.I0(B_V_data_1_payload_B[15]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[15]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [15]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[16]_i_1 
       (.I0(B_V_data_1_payload_B[16]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[16]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [16]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[17]_i_1 
       (.I0(B_V_data_1_payload_B[17]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[17]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [17]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[18]_i_1 
       (.I0(B_V_data_1_payload_B[18]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[18]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [18]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[19]_i_1 
       (.I0(B_V_data_1_payload_B[19]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[19]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [19]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[1]_i_1 
       (.I0(B_V_data_1_payload_B[1]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[1]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[20]_i_1 
       (.I0(B_V_data_1_payload_B[20]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[20]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [20]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[21]_i_1 
       (.I0(B_V_data_1_payload_B[21]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[21]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [21]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[22]_i_1 
       (.I0(B_V_data_1_payload_B[22]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[22]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [22]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[23]_i_1 
       (.I0(B_V_data_1_payload_B[23]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[23]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [23]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[24]_i_1 
       (.I0(B_V_data_1_payload_B[24]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[24]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [24]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[25]_i_1 
       (.I0(B_V_data_1_payload_B[25]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[25]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [25]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[26]_i_1 
       (.I0(B_V_data_1_payload_B[26]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[26]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [26]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[27]_i_1 
       (.I0(B_V_data_1_payload_B[27]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[27]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [27]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[28]_i_1 
       (.I0(B_V_data_1_payload_B[28]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[28]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [28]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[29]_i_1 
       (.I0(B_V_data_1_payload_B[29]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[29]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [29]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[2]_i_1 
       (.I0(B_V_data_1_payload_B[2]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[2]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[30]_i_1 
       (.I0(B_V_data_1_payload_B[30]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[30]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [30]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[31]_i_1 
       (.I0(B_V_data_1_payload_B[31]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[31]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [31]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[32]_i_1 
       (.I0(B_V_data_1_payload_B[32]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[32]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [32]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[33]_i_1 
       (.I0(B_V_data_1_payload_B[33]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[33]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [33]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[34]_i_1 
       (.I0(B_V_data_1_payload_B[34]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[34]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [34]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[35]_i_1 
       (.I0(B_V_data_1_payload_B[35]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[35]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [35]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[36]_i_1 
       (.I0(B_V_data_1_payload_B[36]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[36]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [36]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[37]_i_1 
       (.I0(B_V_data_1_payload_B[37]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[37]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [37]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[38]_i_1 
       (.I0(B_V_data_1_payload_B[38]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[38]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [38]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[39]_i_1 
       (.I0(B_V_data_1_payload_B[39]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[39]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [39]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[3]_i_1 
       (.I0(B_V_data_1_payload_B[3]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[3]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[40]_i_1 
       (.I0(B_V_data_1_payload_B[40]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[40]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [40]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[41]_i_1 
       (.I0(B_V_data_1_payload_B[41]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[41]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [41]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[42]_i_1 
       (.I0(B_V_data_1_payload_B[42]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[42]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [42]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[43]_i_1 
       (.I0(B_V_data_1_payload_B[43]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[43]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [43]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[44]_i_1 
       (.I0(B_V_data_1_payload_B[44]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[44]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [44]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[45]_i_1 
       (.I0(B_V_data_1_payload_B[45]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[45]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [45]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[46]_i_1 
       (.I0(B_V_data_1_payload_B[46]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[46]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [46]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[47]_i_1 
       (.I0(B_V_data_1_payload_B[47]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[47]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [47]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[48]_i_1 
       (.I0(B_V_data_1_payload_B[48]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[48]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [48]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[49]_i_1 
       (.I0(B_V_data_1_payload_B[49]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[49]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [49]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[4]_i_1 
       (.I0(B_V_data_1_payload_B[4]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[4]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[50]_i_1 
       (.I0(B_V_data_1_payload_B[50]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[50]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [50]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[51]_i_1 
       (.I0(B_V_data_1_payload_B[51]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[51]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [51]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[52]_i_1 
       (.I0(B_V_data_1_payload_B[52]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[52]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [52]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[53]_i_1 
       (.I0(B_V_data_1_payload_B[53]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[53]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [53]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[54]_i_1 
       (.I0(B_V_data_1_payload_B[54]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[54]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [54]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[55]_i_1 
       (.I0(B_V_data_1_payload_B[55]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[55]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [55]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[56]_i_1 
       (.I0(B_V_data_1_payload_B[56]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[56]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [56]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[57]_i_1 
       (.I0(B_V_data_1_payload_B[57]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[57]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [57]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[58]_i_1 
       (.I0(B_V_data_1_payload_B[58]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[58]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [58]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[59]_i_1 
       (.I0(B_V_data_1_payload_B[59]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[59]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [59]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[5]_i_1 
       (.I0(B_V_data_1_payload_B[5]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[5]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[60]_i_1 
       (.I0(B_V_data_1_payload_B[60]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[60]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [60]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[61]_i_1 
       (.I0(B_V_data_1_payload_B[61]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[61]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [61]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[62]_i_1 
       (.I0(B_V_data_1_payload_B[62]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[62]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [62]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[63]_i_1 
       (.I0(B_V_data_1_payload_B[63]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[63]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [63]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[64]_i_1 
       (.I0(B_V_data_1_payload_B[64]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[64]),
        .O(data_in_TDATA_int_regslice));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[65]_i_1 
       (.I0(B_V_data_1_payload_B[65]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[65]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [64]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[66]_i_1 
       (.I0(B_V_data_1_payload_B[66]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[66]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [65]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[67]_i_1 
       (.I0(B_V_data_1_payload_B[67]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[67]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [66]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[68]_i_1 
       (.I0(B_V_data_1_payload_B[68]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[68]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [67]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[69]_i_1 
       (.I0(B_V_data_1_payload_B[69]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[69]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [68]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[6]_i_1 
       (.I0(B_V_data_1_payload_B[6]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[6]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[70]_i_1 
       (.I0(B_V_data_1_payload_B[70]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[70]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [69]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[71]_i_1 
       (.I0(B_V_data_1_payload_B[71]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[71]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [70]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[72]_i_1 
       (.I0(B_V_data_1_payload_B[72]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[72]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [71]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[73]_i_1 
       (.I0(B_V_data_1_payload_B[73]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[73]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [72]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[74]_i_1 
       (.I0(B_V_data_1_payload_B[74]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[74]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [73]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[75]_i_1 
       (.I0(B_V_data_1_payload_B[75]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[75]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [74]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[76]_i_1 
       (.I0(B_V_data_1_payload_B[76]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[76]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [75]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[77]_i_1 
       (.I0(B_V_data_1_payload_B[77]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[77]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [76]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[78]_i_1 
       (.I0(B_V_data_1_payload_B[78]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[78]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [77]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[79]_i_1 
       (.I0(B_V_data_1_payload_B[79]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[79]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [78]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[7]_i_1 
       (.I0(B_V_data_1_payload_B[7]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[7]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[80]_i_1 
       (.I0(B_V_data_1_payload_B[80]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[80]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [79]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[81]_i_1 
       (.I0(B_V_data_1_payload_B[81]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[81]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [80]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[82]_i_1 
       (.I0(B_V_data_1_payload_B[82]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[82]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [81]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[83]_i_1 
       (.I0(B_V_data_1_payload_B[83]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[83]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [82]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[84]_i_1 
       (.I0(B_V_data_1_payload_B[84]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[84]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [83]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[85]_i_1 
       (.I0(B_V_data_1_payload_B[85]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[85]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [84]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[86]_i_1 
       (.I0(B_V_data_1_payload_B[86]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[86]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [85]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[87]_i_1 
       (.I0(B_V_data_1_payload_B[87]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[87]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [86]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[88]_i_1 
       (.I0(B_V_data_1_payload_B[88]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[88]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [87]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[89]_i_1 
       (.I0(B_V_data_1_payload_B[89]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[89]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [88]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[8]_i_1 
       (.I0(B_V_data_1_payload_B[8]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[8]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[90]_i_1 
       (.I0(B_V_data_1_payload_B[90]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[90]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [89]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[91]_i_1 
       (.I0(B_V_data_1_payload_B[91]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[91]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [90]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[92]_i_1 
       (.I0(B_V_data_1_payload_B[92]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[92]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [91]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[93]_i_1 
       (.I0(B_V_data_1_payload_B[93]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[93]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [92]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[94]_i_1 
       (.I0(B_V_data_1_payload_B[94]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[94]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [93]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[95]_i_1 
       (.I0(B_V_data_1_payload_B[95]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[95]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [94]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[96]_i_1 
       (.I0(B_V_data_1_payload_B[96]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[96]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [95]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[97]_i_1 
       (.I0(B_V_data_1_payload_B[97]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[97]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [96]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[98]_i_1 
       (.I0(B_V_data_1_payload_B[98]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[98]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [97]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[99]_i_1 
       (.I0(B_V_data_1_payload_B[99]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[99]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [98]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_in_read_reg_124[9]_i_1 
       (.I0(B_V_data_1_payload_B[9]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[9]),
        .O(\B_V_data_1_payload_B_reg[127]_0 [9]));
  LUT3 #(
    .INIT(8'hBA)) 
    grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg_i_1
       (.I0(Q),
        .I1(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_ready),
        .I2(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg),
        .O(\ap_CS_fsm_reg[1] ));
  LUT6 #(
    .INIT(64'h0008880800000000)) 
    \i_fu_44[30]_i_2 
       (.I0(\i_fu_44_reg[30] ),
        .I1(CO),
        .I2(B_V_data_1_payload_A[64]),
        .I3(B_V_data_1_sel),
        .I4(B_V_data_1_payload_B[64]),
        .I5(data_in_TVALID_int_regslice),
        .O(E));
  LUT6 #(
    .INIT(64'h80888000CCCCCCCC)) 
    \i_fu_44[30]_i_4 
       (.I0(data_in_TVALID_int_regslice),
        .I1(\i_fu_44_reg[30] ),
        .I2(B_V_data_1_payload_B[64]),
        .I3(B_V_data_1_sel),
        .I4(B_V_data_1_payload_A[64]),
        .I5(CO),
        .O(grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_ready));
endmodule

(* ORIG_REF_NAME = "paillier_fl_kernel_regslice_both" *) 
module design_1_paillier_fl_kernel_0_0_paillier_fl_kernel_regslice_both_0
   (data_out_TREADY_int_regslice,
    \B_V_data_1_state_reg[0]_0 ,
    B_V_data_1_sel_wr,
    D,
    \ap_CS_fsm_reg[3] ,
    data_out_TDATA,
    ap_rst_n_inv,
    ap_clk,
    B_V_data_1_sel_wr_reg_0,
    data_out_TREADY,
    \B_V_data_1_state_reg[1]_0 ,
    ap_rst_n,
    Q,
    \ap_CS_fsm_reg[3]_0 ,
    ap_start,
    \B_V_data_1_payload_A_reg[127]_0 );
  output data_out_TREADY_int_regslice;
  output \B_V_data_1_state_reg[0]_0 ;
  output B_V_data_1_sel_wr;
  output [1:0]D;
  output \ap_CS_fsm_reg[3] ;
  output [127:0]data_out_TDATA;
  input ap_rst_n_inv;
  input ap_clk;
  input B_V_data_1_sel_wr_reg_0;
  input data_out_TREADY;
  input \B_V_data_1_state_reg[1]_0 ;
  input ap_rst_n;
  input [2:0]Q;
  input \ap_CS_fsm_reg[3]_0 ;
  input ap_start;
  input [127:0]\B_V_data_1_payload_A_reg[127]_0 ;

  wire B_V_data_1_load_A;
  wire B_V_data_1_load_B;
  wire [127:0]\B_V_data_1_payload_A_reg[127]_0 ;
  wire \B_V_data_1_payload_A_reg_n_0_[0] ;
  wire \B_V_data_1_payload_A_reg_n_0_[100] ;
  wire \B_V_data_1_payload_A_reg_n_0_[101] ;
  wire \B_V_data_1_payload_A_reg_n_0_[102] ;
  wire \B_V_data_1_payload_A_reg_n_0_[103] ;
  wire \B_V_data_1_payload_A_reg_n_0_[104] ;
  wire \B_V_data_1_payload_A_reg_n_0_[105] ;
  wire \B_V_data_1_payload_A_reg_n_0_[106] ;
  wire \B_V_data_1_payload_A_reg_n_0_[107] ;
  wire \B_V_data_1_payload_A_reg_n_0_[108] ;
  wire \B_V_data_1_payload_A_reg_n_0_[109] ;
  wire \B_V_data_1_payload_A_reg_n_0_[10] ;
  wire \B_V_data_1_payload_A_reg_n_0_[110] ;
  wire \B_V_data_1_payload_A_reg_n_0_[111] ;
  wire \B_V_data_1_payload_A_reg_n_0_[112] ;
  wire \B_V_data_1_payload_A_reg_n_0_[113] ;
  wire \B_V_data_1_payload_A_reg_n_0_[114] ;
  wire \B_V_data_1_payload_A_reg_n_0_[115] ;
  wire \B_V_data_1_payload_A_reg_n_0_[116] ;
  wire \B_V_data_1_payload_A_reg_n_0_[117] ;
  wire \B_V_data_1_payload_A_reg_n_0_[118] ;
  wire \B_V_data_1_payload_A_reg_n_0_[119] ;
  wire \B_V_data_1_payload_A_reg_n_0_[11] ;
  wire \B_V_data_1_payload_A_reg_n_0_[120] ;
  wire \B_V_data_1_payload_A_reg_n_0_[121] ;
  wire \B_V_data_1_payload_A_reg_n_0_[122] ;
  wire \B_V_data_1_payload_A_reg_n_0_[123] ;
  wire \B_V_data_1_payload_A_reg_n_0_[124] ;
  wire \B_V_data_1_payload_A_reg_n_0_[125] ;
  wire \B_V_data_1_payload_A_reg_n_0_[126] ;
  wire \B_V_data_1_payload_A_reg_n_0_[127] ;
  wire \B_V_data_1_payload_A_reg_n_0_[12] ;
  wire \B_V_data_1_payload_A_reg_n_0_[13] ;
  wire \B_V_data_1_payload_A_reg_n_0_[14] ;
  wire \B_V_data_1_payload_A_reg_n_0_[15] ;
  wire \B_V_data_1_payload_A_reg_n_0_[16] ;
  wire \B_V_data_1_payload_A_reg_n_0_[17] ;
  wire \B_V_data_1_payload_A_reg_n_0_[18] ;
  wire \B_V_data_1_payload_A_reg_n_0_[19] ;
  wire \B_V_data_1_payload_A_reg_n_0_[1] ;
  wire \B_V_data_1_payload_A_reg_n_0_[20] ;
  wire \B_V_data_1_payload_A_reg_n_0_[21] ;
  wire \B_V_data_1_payload_A_reg_n_0_[22] ;
  wire \B_V_data_1_payload_A_reg_n_0_[23] ;
  wire \B_V_data_1_payload_A_reg_n_0_[24] ;
  wire \B_V_data_1_payload_A_reg_n_0_[25] ;
  wire \B_V_data_1_payload_A_reg_n_0_[26] ;
  wire \B_V_data_1_payload_A_reg_n_0_[27] ;
  wire \B_V_data_1_payload_A_reg_n_0_[28] ;
  wire \B_V_data_1_payload_A_reg_n_0_[29] ;
  wire \B_V_data_1_payload_A_reg_n_0_[2] ;
  wire \B_V_data_1_payload_A_reg_n_0_[30] ;
  wire \B_V_data_1_payload_A_reg_n_0_[31] ;
  wire \B_V_data_1_payload_A_reg_n_0_[32] ;
  wire \B_V_data_1_payload_A_reg_n_0_[33] ;
  wire \B_V_data_1_payload_A_reg_n_0_[34] ;
  wire \B_V_data_1_payload_A_reg_n_0_[35] ;
  wire \B_V_data_1_payload_A_reg_n_0_[36] ;
  wire \B_V_data_1_payload_A_reg_n_0_[37] ;
  wire \B_V_data_1_payload_A_reg_n_0_[38] ;
  wire \B_V_data_1_payload_A_reg_n_0_[39] ;
  wire \B_V_data_1_payload_A_reg_n_0_[3] ;
  wire \B_V_data_1_payload_A_reg_n_0_[40] ;
  wire \B_V_data_1_payload_A_reg_n_0_[41] ;
  wire \B_V_data_1_payload_A_reg_n_0_[42] ;
  wire \B_V_data_1_payload_A_reg_n_0_[43] ;
  wire \B_V_data_1_payload_A_reg_n_0_[44] ;
  wire \B_V_data_1_payload_A_reg_n_0_[45] ;
  wire \B_V_data_1_payload_A_reg_n_0_[46] ;
  wire \B_V_data_1_payload_A_reg_n_0_[47] ;
  wire \B_V_data_1_payload_A_reg_n_0_[48] ;
  wire \B_V_data_1_payload_A_reg_n_0_[49] ;
  wire \B_V_data_1_payload_A_reg_n_0_[4] ;
  wire \B_V_data_1_payload_A_reg_n_0_[50] ;
  wire \B_V_data_1_payload_A_reg_n_0_[51] ;
  wire \B_V_data_1_payload_A_reg_n_0_[52] ;
  wire \B_V_data_1_payload_A_reg_n_0_[53] ;
  wire \B_V_data_1_payload_A_reg_n_0_[54] ;
  wire \B_V_data_1_payload_A_reg_n_0_[55] ;
  wire \B_V_data_1_payload_A_reg_n_0_[56] ;
  wire \B_V_data_1_payload_A_reg_n_0_[57] ;
  wire \B_V_data_1_payload_A_reg_n_0_[58] ;
  wire \B_V_data_1_payload_A_reg_n_0_[59] ;
  wire \B_V_data_1_payload_A_reg_n_0_[5] ;
  wire \B_V_data_1_payload_A_reg_n_0_[60] ;
  wire \B_V_data_1_payload_A_reg_n_0_[61] ;
  wire \B_V_data_1_payload_A_reg_n_0_[62] ;
  wire \B_V_data_1_payload_A_reg_n_0_[63] ;
  wire \B_V_data_1_payload_A_reg_n_0_[64] ;
  wire \B_V_data_1_payload_A_reg_n_0_[65] ;
  wire \B_V_data_1_payload_A_reg_n_0_[66] ;
  wire \B_V_data_1_payload_A_reg_n_0_[67] ;
  wire \B_V_data_1_payload_A_reg_n_0_[68] ;
  wire \B_V_data_1_payload_A_reg_n_0_[69] ;
  wire \B_V_data_1_payload_A_reg_n_0_[6] ;
  wire \B_V_data_1_payload_A_reg_n_0_[70] ;
  wire \B_V_data_1_payload_A_reg_n_0_[71] ;
  wire \B_V_data_1_payload_A_reg_n_0_[72] ;
  wire \B_V_data_1_payload_A_reg_n_0_[73] ;
  wire \B_V_data_1_payload_A_reg_n_0_[74] ;
  wire \B_V_data_1_payload_A_reg_n_0_[75] ;
  wire \B_V_data_1_payload_A_reg_n_0_[76] ;
  wire \B_V_data_1_payload_A_reg_n_0_[77] ;
  wire \B_V_data_1_payload_A_reg_n_0_[78] ;
  wire \B_V_data_1_payload_A_reg_n_0_[79] ;
  wire \B_V_data_1_payload_A_reg_n_0_[7] ;
  wire \B_V_data_1_payload_A_reg_n_0_[80] ;
  wire \B_V_data_1_payload_A_reg_n_0_[81] ;
  wire \B_V_data_1_payload_A_reg_n_0_[82] ;
  wire \B_V_data_1_payload_A_reg_n_0_[83] ;
  wire \B_V_data_1_payload_A_reg_n_0_[84] ;
  wire \B_V_data_1_payload_A_reg_n_0_[85] ;
  wire \B_V_data_1_payload_A_reg_n_0_[86] ;
  wire \B_V_data_1_payload_A_reg_n_0_[87] ;
  wire \B_V_data_1_payload_A_reg_n_0_[88] ;
  wire \B_V_data_1_payload_A_reg_n_0_[89] ;
  wire \B_V_data_1_payload_A_reg_n_0_[8] ;
  wire \B_V_data_1_payload_A_reg_n_0_[90] ;
  wire \B_V_data_1_payload_A_reg_n_0_[91] ;
  wire \B_V_data_1_payload_A_reg_n_0_[92] ;
  wire \B_V_data_1_payload_A_reg_n_0_[93] ;
  wire \B_V_data_1_payload_A_reg_n_0_[94] ;
  wire \B_V_data_1_payload_A_reg_n_0_[95] ;
  wire \B_V_data_1_payload_A_reg_n_0_[96] ;
  wire \B_V_data_1_payload_A_reg_n_0_[97] ;
  wire \B_V_data_1_payload_A_reg_n_0_[98] ;
  wire \B_V_data_1_payload_A_reg_n_0_[99] ;
  wire \B_V_data_1_payload_A_reg_n_0_[9] ;
  wire \B_V_data_1_payload_B_reg_n_0_[0] ;
  wire \B_V_data_1_payload_B_reg_n_0_[100] ;
  wire \B_V_data_1_payload_B_reg_n_0_[101] ;
  wire \B_V_data_1_payload_B_reg_n_0_[102] ;
  wire \B_V_data_1_payload_B_reg_n_0_[103] ;
  wire \B_V_data_1_payload_B_reg_n_0_[104] ;
  wire \B_V_data_1_payload_B_reg_n_0_[105] ;
  wire \B_V_data_1_payload_B_reg_n_0_[106] ;
  wire \B_V_data_1_payload_B_reg_n_0_[107] ;
  wire \B_V_data_1_payload_B_reg_n_0_[108] ;
  wire \B_V_data_1_payload_B_reg_n_0_[109] ;
  wire \B_V_data_1_payload_B_reg_n_0_[10] ;
  wire \B_V_data_1_payload_B_reg_n_0_[110] ;
  wire \B_V_data_1_payload_B_reg_n_0_[111] ;
  wire \B_V_data_1_payload_B_reg_n_0_[112] ;
  wire \B_V_data_1_payload_B_reg_n_0_[113] ;
  wire \B_V_data_1_payload_B_reg_n_0_[114] ;
  wire \B_V_data_1_payload_B_reg_n_0_[115] ;
  wire \B_V_data_1_payload_B_reg_n_0_[116] ;
  wire \B_V_data_1_payload_B_reg_n_0_[117] ;
  wire \B_V_data_1_payload_B_reg_n_0_[118] ;
  wire \B_V_data_1_payload_B_reg_n_0_[119] ;
  wire \B_V_data_1_payload_B_reg_n_0_[11] ;
  wire \B_V_data_1_payload_B_reg_n_0_[120] ;
  wire \B_V_data_1_payload_B_reg_n_0_[121] ;
  wire \B_V_data_1_payload_B_reg_n_0_[122] ;
  wire \B_V_data_1_payload_B_reg_n_0_[123] ;
  wire \B_V_data_1_payload_B_reg_n_0_[124] ;
  wire \B_V_data_1_payload_B_reg_n_0_[125] ;
  wire \B_V_data_1_payload_B_reg_n_0_[126] ;
  wire \B_V_data_1_payload_B_reg_n_0_[127] ;
  wire \B_V_data_1_payload_B_reg_n_0_[12] ;
  wire \B_V_data_1_payload_B_reg_n_0_[13] ;
  wire \B_V_data_1_payload_B_reg_n_0_[14] ;
  wire \B_V_data_1_payload_B_reg_n_0_[15] ;
  wire \B_V_data_1_payload_B_reg_n_0_[16] ;
  wire \B_V_data_1_payload_B_reg_n_0_[17] ;
  wire \B_V_data_1_payload_B_reg_n_0_[18] ;
  wire \B_V_data_1_payload_B_reg_n_0_[19] ;
  wire \B_V_data_1_payload_B_reg_n_0_[1] ;
  wire \B_V_data_1_payload_B_reg_n_0_[20] ;
  wire \B_V_data_1_payload_B_reg_n_0_[21] ;
  wire \B_V_data_1_payload_B_reg_n_0_[22] ;
  wire \B_V_data_1_payload_B_reg_n_0_[23] ;
  wire \B_V_data_1_payload_B_reg_n_0_[24] ;
  wire \B_V_data_1_payload_B_reg_n_0_[25] ;
  wire \B_V_data_1_payload_B_reg_n_0_[26] ;
  wire \B_V_data_1_payload_B_reg_n_0_[27] ;
  wire \B_V_data_1_payload_B_reg_n_0_[28] ;
  wire \B_V_data_1_payload_B_reg_n_0_[29] ;
  wire \B_V_data_1_payload_B_reg_n_0_[2] ;
  wire \B_V_data_1_payload_B_reg_n_0_[30] ;
  wire \B_V_data_1_payload_B_reg_n_0_[31] ;
  wire \B_V_data_1_payload_B_reg_n_0_[32] ;
  wire \B_V_data_1_payload_B_reg_n_0_[33] ;
  wire \B_V_data_1_payload_B_reg_n_0_[34] ;
  wire \B_V_data_1_payload_B_reg_n_0_[35] ;
  wire \B_V_data_1_payload_B_reg_n_0_[36] ;
  wire \B_V_data_1_payload_B_reg_n_0_[37] ;
  wire \B_V_data_1_payload_B_reg_n_0_[38] ;
  wire \B_V_data_1_payload_B_reg_n_0_[39] ;
  wire \B_V_data_1_payload_B_reg_n_0_[3] ;
  wire \B_V_data_1_payload_B_reg_n_0_[40] ;
  wire \B_V_data_1_payload_B_reg_n_0_[41] ;
  wire \B_V_data_1_payload_B_reg_n_0_[42] ;
  wire \B_V_data_1_payload_B_reg_n_0_[43] ;
  wire \B_V_data_1_payload_B_reg_n_0_[44] ;
  wire \B_V_data_1_payload_B_reg_n_0_[45] ;
  wire \B_V_data_1_payload_B_reg_n_0_[46] ;
  wire \B_V_data_1_payload_B_reg_n_0_[47] ;
  wire \B_V_data_1_payload_B_reg_n_0_[48] ;
  wire \B_V_data_1_payload_B_reg_n_0_[49] ;
  wire \B_V_data_1_payload_B_reg_n_0_[4] ;
  wire \B_V_data_1_payload_B_reg_n_0_[50] ;
  wire \B_V_data_1_payload_B_reg_n_0_[51] ;
  wire \B_V_data_1_payload_B_reg_n_0_[52] ;
  wire \B_V_data_1_payload_B_reg_n_0_[53] ;
  wire \B_V_data_1_payload_B_reg_n_0_[54] ;
  wire \B_V_data_1_payload_B_reg_n_0_[55] ;
  wire \B_V_data_1_payload_B_reg_n_0_[56] ;
  wire \B_V_data_1_payload_B_reg_n_0_[57] ;
  wire \B_V_data_1_payload_B_reg_n_0_[58] ;
  wire \B_V_data_1_payload_B_reg_n_0_[59] ;
  wire \B_V_data_1_payload_B_reg_n_0_[5] ;
  wire \B_V_data_1_payload_B_reg_n_0_[60] ;
  wire \B_V_data_1_payload_B_reg_n_0_[61] ;
  wire \B_V_data_1_payload_B_reg_n_0_[62] ;
  wire \B_V_data_1_payload_B_reg_n_0_[63] ;
  wire \B_V_data_1_payload_B_reg_n_0_[64] ;
  wire \B_V_data_1_payload_B_reg_n_0_[65] ;
  wire \B_V_data_1_payload_B_reg_n_0_[66] ;
  wire \B_V_data_1_payload_B_reg_n_0_[67] ;
  wire \B_V_data_1_payload_B_reg_n_0_[68] ;
  wire \B_V_data_1_payload_B_reg_n_0_[69] ;
  wire \B_V_data_1_payload_B_reg_n_0_[6] ;
  wire \B_V_data_1_payload_B_reg_n_0_[70] ;
  wire \B_V_data_1_payload_B_reg_n_0_[71] ;
  wire \B_V_data_1_payload_B_reg_n_0_[72] ;
  wire \B_V_data_1_payload_B_reg_n_0_[73] ;
  wire \B_V_data_1_payload_B_reg_n_0_[74] ;
  wire \B_V_data_1_payload_B_reg_n_0_[75] ;
  wire \B_V_data_1_payload_B_reg_n_0_[76] ;
  wire \B_V_data_1_payload_B_reg_n_0_[77] ;
  wire \B_V_data_1_payload_B_reg_n_0_[78] ;
  wire \B_V_data_1_payload_B_reg_n_0_[79] ;
  wire \B_V_data_1_payload_B_reg_n_0_[7] ;
  wire \B_V_data_1_payload_B_reg_n_0_[80] ;
  wire \B_V_data_1_payload_B_reg_n_0_[81] ;
  wire \B_V_data_1_payload_B_reg_n_0_[82] ;
  wire \B_V_data_1_payload_B_reg_n_0_[83] ;
  wire \B_V_data_1_payload_B_reg_n_0_[84] ;
  wire \B_V_data_1_payload_B_reg_n_0_[85] ;
  wire \B_V_data_1_payload_B_reg_n_0_[86] ;
  wire \B_V_data_1_payload_B_reg_n_0_[87] ;
  wire \B_V_data_1_payload_B_reg_n_0_[88] ;
  wire \B_V_data_1_payload_B_reg_n_0_[89] ;
  wire \B_V_data_1_payload_B_reg_n_0_[8] ;
  wire \B_V_data_1_payload_B_reg_n_0_[90] ;
  wire \B_V_data_1_payload_B_reg_n_0_[91] ;
  wire \B_V_data_1_payload_B_reg_n_0_[92] ;
  wire \B_V_data_1_payload_B_reg_n_0_[93] ;
  wire \B_V_data_1_payload_B_reg_n_0_[94] ;
  wire \B_V_data_1_payload_B_reg_n_0_[95] ;
  wire \B_V_data_1_payload_B_reg_n_0_[96] ;
  wire \B_V_data_1_payload_B_reg_n_0_[97] ;
  wire \B_V_data_1_payload_B_reg_n_0_[98] ;
  wire \B_V_data_1_payload_B_reg_n_0_[99] ;
  wire \B_V_data_1_payload_B_reg_n_0_[9] ;
  wire B_V_data_1_sel_rd_i_1__0_n_0;
  wire B_V_data_1_sel_rd_reg_n_0;
  wire B_V_data_1_sel_wr;
  wire B_V_data_1_sel_wr_reg_0;
  wire [1:1]B_V_data_1_state;
  wire \B_V_data_1_state[0]_i_1_n_0 ;
  wire \B_V_data_1_state_reg[0]_0 ;
  wire \B_V_data_1_state_reg[1]_0 ;
  wire [1:0]D;
  wire [2:0]Q;
  wire \ap_CS_fsm_reg[3] ;
  wire \ap_CS_fsm_reg[3]_0 ;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_start;
  wire [127:0]data_out_TDATA;
  wire data_out_TREADY;
  wire data_out_TREADY_int_regslice;

  LUT3 #(
    .INIT(8'h45)) 
    \B_V_data_1_payload_A[127]_i_1 
       (.I0(B_V_data_1_sel_wr),
        .I1(data_out_TREADY_int_regslice),
        .I2(\B_V_data_1_state_reg[0]_0 ),
        .O(B_V_data_1_load_A));
  FDRE \B_V_data_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [0]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[100] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [100]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[100] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[101] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [101]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[101] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[102] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [102]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[102] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[103] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [103]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[103] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[104] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [104]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[104] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[105] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [105]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[105] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[106] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [106]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[106] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[107] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [107]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[107] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[108] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [108]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[108] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[109] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [109]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[109] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [10]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[110] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [110]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[110] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[111] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [111]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[111] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[112] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [112]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[112] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[113] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [113]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[113] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[114] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [114]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[114] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[115] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [115]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[115] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[116] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [116]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[116] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[117] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [117]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[117] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[118] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [118]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[118] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[119] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [119]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[119] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [11]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[120] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [120]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[120] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[121] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [121]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[121] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[122] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [122]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[122] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[123] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [123]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[123] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[124] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [124]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[124] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[125] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [125]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[125] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[126] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [126]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[126] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[127] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [127]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[127] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [12]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [13]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [14]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [15]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[16] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [16]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[17] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [17]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[18] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [18]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[19] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [19]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [1]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[20] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [20]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[21] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [21]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[22] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [22]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[23] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [23]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[24] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [24]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[25] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [25]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[26] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [26]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[27] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [27]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[28] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [28]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[29] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [29]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [2]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[30] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [30]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[31] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [31]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[32] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [32]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[32] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[33] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [33]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[33] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[34] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [34]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[34] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[35] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [35]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[35] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[36] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [36]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[36] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[37] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [37]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[37] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[38] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [38]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[38] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[39] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [39]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[39] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [3]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[40] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [40]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[40] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[41] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [41]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[41] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[42] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [42]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[42] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[43] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [43]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[43] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[44] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [44]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[44] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[45] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [45]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[45] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[46] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [46]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[46] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[47] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [47]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[47] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[48] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [48]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[48] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[49] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [49]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[49] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [4]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[50] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [50]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[50] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[51] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [51]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[51] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[52] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [52]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[52] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[53] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [53]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[53] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[54] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [54]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[54] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[55] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [55]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[55] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[56] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [56]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[56] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[57] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [57]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[57] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[58] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [58]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[58] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[59] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [59]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[59] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [5]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[60] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [60]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[60] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[61] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [61]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[61] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[62] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [62]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[62] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[63] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [63]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[63] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[64] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [64]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[64] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[65] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [65]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[65] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[66] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [66]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[66] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[67] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [67]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[67] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[68] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [68]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[68] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[69] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [69]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[69] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [6]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[70] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [70]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[70] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[71] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [71]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[71] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[72] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [72]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[72] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[73] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [73]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[73] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[74] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [74]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[74] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[75] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [75]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[75] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[76] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [76]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[76] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[77] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [77]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[77] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[78] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [78]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[78] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[79] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [79]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[79] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [7]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[80] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [80]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[80] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[81] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [81]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[81] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[82] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [82]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[82] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[83] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [83]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[83] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[84] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [84]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[84] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[85] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [85]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[85] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[86] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [86]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[86] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[87] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [87]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[87] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[88] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [88]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[88] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[89] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [89]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[89] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [8]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[90] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [90]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[90] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[91] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [91]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[91] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[92] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [92]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[92] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[93] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [93]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[93] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[94] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [94]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[94] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[95] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [95]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[95] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[96] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [96]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[96] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[97] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [97]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[97] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[98] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [98]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[98] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[99] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [99]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[99] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[127]_0 [9]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[9] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8A)) 
    \B_V_data_1_payload_B[127]_i_1 
       (.I0(B_V_data_1_sel_wr),
        .I1(data_out_TREADY_int_regslice),
        .I2(\B_V_data_1_state_reg[0]_0 ),
        .O(B_V_data_1_load_B));
  FDRE \B_V_data_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [0]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[100] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [100]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[100] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[101] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [101]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[101] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[102] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [102]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[102] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[103] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [103]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[103] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[104] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [104]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[104] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[105] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [105]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[105] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[106] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [106]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[106] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[107] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [107]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[107] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[108] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [108]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[108] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[109] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [109]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[109] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [10]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[110] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [110]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[110] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[111] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [111]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[111] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[112] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [112]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[112] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[113] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [113]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[113] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[114] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [114]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[114] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[115] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [115]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[115] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[116] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [116]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[116] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[117] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [117]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[117] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[118] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [118]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[118] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[119] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [119]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[119] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [11]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[120] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [120]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[120] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[121] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [121]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[121] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[122] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [122]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[122] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[123] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [123]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[123] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[124] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [124]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[124] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[125] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [125]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[125] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[126] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [126]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[126] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[127] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [127]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[127] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [12]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [13]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [14]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [15]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[16] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [16]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[17] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [17]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[18] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [18]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[19] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [19]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [1]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[20] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [20]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[21] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [21]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[22] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [22]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[23] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [23]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[24] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [24]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[25] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [25]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[26] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [26]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[27] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [27]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[28] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [28]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[29] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [29]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [2]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[30] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [30]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[31] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [31]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[32] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [32]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[32] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[33] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [33]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[33] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[34] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [34]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[34] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[35] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [35]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[35] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[36] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [36]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[36] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[37] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [37]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[37] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[38] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [38]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[38] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[39] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [39]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[39] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [3]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[40] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [40]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[40] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[41] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [41]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[41] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[42] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [42]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[42] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[43] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [43]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[43] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[44] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [44]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[44] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[45] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [45]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[45] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[46] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [46]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[46] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[47] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [47]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[47] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[48] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [48]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[48] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[49] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [49]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[49] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [4]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[50] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [50]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[50] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[51] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [51]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[51] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[52] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [52]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[52] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[53] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [53]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[53] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[54] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [54]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[54] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[55] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [55]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[55] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[56] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [56]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[56] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[57] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [57]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[57] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[58] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [58]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[58] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[59] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [59]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[59] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [5]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[60] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [60]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[60] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[61] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [61]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[61] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[62] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [62]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[62] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[63] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [63]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[63] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[64] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [64]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[64] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[65] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [65]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[65] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[66] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [66]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[66] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[67] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [67]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[67] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[68] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [68]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[68] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[69] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [69]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[69] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [6]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[70] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [70]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[70] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[71] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [71]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[71] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[72] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [72]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[72] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[73] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [73]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[73] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[74] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [74]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[74] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[75] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [75]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[75] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[76] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [76]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[76] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[77] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [77]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[77] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[78] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [78]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[78] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[79] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [79]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[79] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [7]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[80] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [80]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[80] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[81] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [81]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[81] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[82] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [82]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[82] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[83] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [83]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[83] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[84] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [84]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[84] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[85] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [85]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[85] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[86] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [86]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[86] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[87] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [87]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[87] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[88] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [88]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[88] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[89] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [89]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[89] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [8]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[90] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [90]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[90] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[91] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [91]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[91] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[92] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [92]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[92] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[93] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [93]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[93] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[94] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [94]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[94] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[95] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [95]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[95] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[96] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [96]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[96] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[97] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [97]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[97] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[98] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [98]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[98] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[99] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [99]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[99] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [9]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_rd_i_1__0
       (.I0(data_out_TREADY),
        .I1(\B_V_data_1_state_reg[0]_0 ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(B_V_data_1_sel_rd_i_1__0_n_0));
  FDRE B_V_data_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_rd_i_1__0_n_0),
        .Q(B_V_data_1_sel_rd_reg_n_0),
        .R(ap_rst_n_inv));
  FDRE B_V_data_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_wr_reg_0),
        .Q(B_V_data_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hA2AA8080)) 
    \B_V_data_1_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(data_out_TREADY_int_regslice),
        .I2(\B_V_data_1_state_reg[1]_0 ),
        .I3(data_out_TREADY),
        .I4(\B_V_data_1_state_reg[0]_0 ),
        .O(\B_V_data_1_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT4 #(
    .INIT(16'hDFDD)) 
    \B_V_data_1_state[1]_i_1 
       (.I0(\B_V_data_1_state_reg[0]_0 ),
        .I1(data_out_TREADY),
        .I2(\B_V_data_1_state_reg[1]_0 ),
        .I3(data_out_TREADY_int_regslice),
        .O(B_V_data_1_state));
  FDRE \B_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[0]_i_1_n_0 ),
        .Q(\B_V_data_1_state_reg[0]_0 ),
        .R(1'b0));
  FDRE \B_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_state),
        .Q(data_out_TREADY_int_regslice),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hF444FFFF44444444)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(ap_start),
        .I1(Q[0]),
        .I2(data_out_TREADY),
        .I3(data_out_TREADY_int_regslice),
        .I4(\B_V_data_1_state_reg[0]_0 ),
        .I5(Q[2]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h7000FFFF70007000)) 
    \ap_CS_fsm[3]_i_1 
       (.I0(data_out_TREADY),
        .I1(data_out_TREADY_int_regslice),
        .I2(\B_V_data_1_state_reg[0]_0 ),
        .I3(Q[2]),
        .I4(\ap_CS_fsm_reg[3]_0 ),
        .I5(Q[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[0]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[0] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[0] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[0]));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[100]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[100] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[100] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[100]));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[101]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[101] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[101] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[101]));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[102]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[102] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[102] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[102]));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[103]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[103] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[103] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[103]));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[104]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[104] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[104] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[104]));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[105]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[105] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[105] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[105]));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[106]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[106] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[106] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[106]));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[107]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[107] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[107] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[107]));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[108]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[108] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[108] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[108]));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[109]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[109] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[109] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[109]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[10]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[10] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[10] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[10]));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[110]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[110] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[110] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[110]));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[111]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[111] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[111] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[111]));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[112]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[112] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[112] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[112]));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[113]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[113] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[113] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[113]));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[114]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[114] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[114] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[114]));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[115]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[115] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[115] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[115]));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[116]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[116] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[116] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[116]));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[117]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[117] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[117] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[117]));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[118]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[118] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[118] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[118]));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[119]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[119] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[119] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[119]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[11]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[11] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[11] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[11]));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[120]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[120] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[120] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[120]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[121]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[121] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[121] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[121]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[122]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[122] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[122] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[122]));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[123]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[123] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[123] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[123]));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[124]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[124] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[124] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[124]));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[125]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[125] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[125] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[125]));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[126]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[126] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[126] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[126]));
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[127]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[127] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[127] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[127]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[12]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[12] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[12] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[12]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[13]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[13] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[13] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[13]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[14]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[14] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[14] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[14]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[15]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[15] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[15] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[15]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[16]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[16] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[16] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[16]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[17]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[17] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[17] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[17]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[18]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[18] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[18] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[18]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[19]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[19] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[19] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[19]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[1]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[1] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[1] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[1]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[20]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[20] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[20] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[20]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[21]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[21] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[21] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[21]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[22]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[22] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[22] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[22]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[23]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[23] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[23] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[23]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[24]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[24] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[24] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[24]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[25]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[25] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[25] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[25]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[26]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[26] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[26] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[26]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[27]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[27] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[27] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[27]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[28]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[28] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[28] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[28]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[29]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[29] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[29] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[29]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[2]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[2] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[2] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[2]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[30]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[30] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[30] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[30]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[31]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[31] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[31] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[31]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[32]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[32] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[32] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[32]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[33]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[33] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[33] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[33]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[34]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[34] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[34] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[34]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[35]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[35] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[35] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[35]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[36]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[36] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[36] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[36]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[37]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[37] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[37] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[37]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[38]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[38] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[38] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[38]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[39]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[39] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[39] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[39]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[3]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[3] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[3] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[3]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[40]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[40] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[40] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[40]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[41]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[41] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[41] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[41]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[42]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[42] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[42] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[42]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[43]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[43] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[43] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[43]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[44]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[44] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[44] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[44]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[45]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[45] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[45] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[45]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[46]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[46] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[46] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[46]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[47]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[47] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[47] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[47]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[48]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[48] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[48] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[48]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[49]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[49] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[49] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[49]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[4]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[4] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[4] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[4]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[50]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[50] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[50] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[50]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[51]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[51] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[51] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[51]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[52]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[52] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[52] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[52]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[53]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[53] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[53] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[53]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[54]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[54] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[54] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[54]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[55]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[55] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[55] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[55]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[56]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[56] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[56] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[56]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[57]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[57] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[57] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[57]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[58]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[58] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[58] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[58]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[59]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[59] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[59] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[59]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[5]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[5] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[5] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[5]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[60]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[60] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[60] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[60]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[61]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[61] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[61] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[61]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[62]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[62] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[62] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[62]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[63]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[63] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[63] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[63]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[64]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[64] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[64] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[64]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[65]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[65] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[65] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[65]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[66]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[66] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[66] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[66]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[67]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[67] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[67] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[67]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[68]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[68] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[68] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[68]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[69]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[69] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[69] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[69]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[6]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[6] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[6] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[6]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[70]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[70] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[70] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[70]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[71]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[71] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[71] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[71]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[72]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[72] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[72] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[72]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[73]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[73] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[73] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[73]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[74]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[74] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[74] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[74]));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[75]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[75] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[75] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[75]));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[76]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[76] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[76] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[76]));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[77]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[77] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[77] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[77]));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[78]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[78] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[78] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[78]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[79]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[79] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[79] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[79]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[7]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[7] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[7] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[7]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[80]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[80] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[80] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[80]));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[81]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[81] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[81] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[81]));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[82]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[82] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[82] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[82]));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[83]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[83] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[83] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[83]));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[84]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[84] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[84] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[84]));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[85]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[85] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[85] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[85]));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[86]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[86] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[86] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[86]));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[87]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[87] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[87] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[87]));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[88]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[88] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[88] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[88]));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[89]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[89] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[89] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[89]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[8]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[8] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[8] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[8]));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[90]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[90] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[90] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[90]));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[91]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[91] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[91] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[91]));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[92]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[92] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[92] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[92]));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[93]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[93] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[93] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[93]));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[94]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[94] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[94] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[94]));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[95]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[95] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[95] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[95]));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[96]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[96] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[96] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[96]));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[97]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[97] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[97] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[97]));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[98]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[98] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[98] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[98]));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[99]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[99] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[99] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[99]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out_TDATA[9]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[9] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[9] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(data_out_TDATA[9]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT4 #(
    .INIT(16'h5DDD)) 
    int_ap_start_i_3
       (.I0(Q[2]),
        .I1(\B_V_data_1_state_reg[0]_0 ),
        .I2(data_out_TREADY_int_regslice),
        .I3(data_out_TREADY),
        .O(\ap_CS_fsm_reg[3] ));
endmodule

(* ORIG_REF_NAME = "paillier_fl_kernel_regslice_both" *) 
module design_1_paillier_fl_kernel_0_0_paillier_fl_kernel_regslice_both_1
   (grad_stream_TREADY,
    ap_rst_n_inv,
    ap_clk,
    ap_rst_n,
    grad_stream_TVALID);
  output grad_stream_TREADY;
  input ap_rst_n_inv;
  input ap_clk;
  input ap_rst_n;
  input grad_stream_TVALID;

  wire \B_V_data_1_state[0]_i_1__1_n_0 ;
  wire \B_V_data_1_state[1]_i_1__1_n_0 ;
  wire \B_V_data_1_state_reg_n_0_[0] ;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire grad_stream_TREADY;
  wire grad_stream_TVALID;

  LUT4 #(
    .INIT(16'hAA80)) 
    \B_V_data_1_state[0]_i_1__1 
       (.I0(ap_rst_n),
        .I1(grad_stream_TVALID),
        .I2(grad_stream_TREADY),
        .I3(\B_V_data_1_state_reg_n_0_[0] ),
        .O(\B_V_data_1_state[0]_i_1__1_n_0 ));
  LUT3 #(
    .INIT(8'h4F)) 
    \B_V_data_1_state[1]_i_1__1 
       (.I0(grad_stream_TVALID),
        .I1(grad_stream_TREADY),
        .I2(\B_V_data_1_state_reg_n_0_[0] ),
        .O(\B_V_data_1_state[1]_i_1__1_n_0 ));
  FDRE \B_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[0]_i_1__1_n_0 ),
        .Q(\B_V_data_1_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \B_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[1]_i_1__1_n_0 ),
        .Q(grad_stream_TREADY),
        .R(ap_rst_n_inv));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
