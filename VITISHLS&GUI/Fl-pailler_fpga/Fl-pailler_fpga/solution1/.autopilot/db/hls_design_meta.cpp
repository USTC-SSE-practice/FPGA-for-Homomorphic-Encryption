#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("data_in_TDATA", 128, hls_in, 0, "axis", "in_data", 1),
	Port_Property("data_in_TVALID", 1, hls_in, 0, "axis", "in_vld", 1),
	Port_Property("data_in_TREADY", 1, hls_out, 0, "axis", "in_acc", 1),
	Port_Property("grad_stream_TDATA", 128, hls_in, 1, "axis", "in_data", 1),
	Port_Property("grad_stream_TVALID", 1, hls_in, 1, "axis", "in_vld", 1),
	Port_Property("grad_stream_TREADY", 1, hls_out, 1, "axis", "in_acc", 1),
	Port_Property("data_out_TDATA", 128, hls_out, 2, "axis", "out_data", 1),
	Port_Property("data_out_TVALID", 1, hls_out, 2, "axis", "out_vld", 1),
	Port_Property("data_out_TREADY", 1, hls_in, 2, "axis", "out_acc", 1),
	Port_Property("s_axi_control_AWVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_AWREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_AWADDR", 5, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_WVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_WREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_WDATA", 32, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_WSTRB", 4, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_ARVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_ARREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_ARADDR", 5, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_RVALID", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_RREADY", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_RDATA", 32, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_RRESP", 2, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_BVALID", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_BREADY", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_BRESP", 2, hls_out, -1, "", "", 1),
	Port_Property("interrupt", 1, hls_out, -1, "", "", 1),
};
const char* HLS_Design_Meta::dut_name = "paillier_fl_kernel";
