-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity paillier_fl_kernel is
generic (
    C_S_AXI_CONTROL_ADDR_WIDTH : INTEGER := 5;
    C_S_AXI_CONTROL_DATA_WIDTH : INTEGER := 32 );
port (
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    data_in_TDATA : IN STD_LOGIC_VECTOR (127 downto 0);
    data_in_TVALID : IN STD_LOGIC;
    data_in_TREADY : OUT STD_LOGIC;
    grad_stream_TDATA : IN STD_LOGIC_VECTOR (127 downto 0);
    grad_stream_TVALID : IN STD_LOGIC;
    grad_stream_TREADY : OUT STD_LOGIC;
    data_out_TDATA : OUT STD_LOGIC_VECTOR (127 downto 0);
    data_out_TVALID : OUT STD_LOGIC;
    data_out_TREADY : IN STD_LOGIC;
    s_axi_control_AWVALID : IN STD_LOGIC;
    s_axi_control_AWREADY : OUT STD_LOGIC;
    s_axi_control_AWADDR : IN STD_LOGIC_VECTOR (C_S_AXI_CONTROL_ADDR_WIDTH-1 downto 0);
    s_axi_control_WVALID : IN STD_LOGIC;
    s_axi_control_WREADY : OUT STD_LOGIC;
    s_axi_control_WDATA : IN STD_LOGIC_VECTOR (C_S_AXI_CONTROL_DATA_WIDTH-1 downto 0);
    s_axi_control_WSTRB : IN STD_LOGIC_VECTOR (C_S_AXI_CONTROL_DATA_WIDTH/8-1 downto 0);
    s_axi_control_ARVALID : IN STD_LOGIC;
    s_axi_control_ARREADY : OUT STD_LOGIC;
    s_axi_control_ARADDR : IN STD_LOGIC_VECTOR (C_S_AXI_CONTROL_ADDR_WIDTH-1 downto 0);
    s_axi_control_RVALID : OUT STD_LOGIC;
    s_axi_control_RREADY : IN STD_LOGIC;
    s_axi_control_RDATA : OUT STD_LOGIC_VECTOR (C_S_AXI_CONTROL_DATA_WIDTH-1 downto 0);
    s_axi_control_RRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
    s_axi_control_BVALID : OUT STD_LOGIC;
    s_axi_control_BREADY : IN STD_LOGIC;
    s_axi_control_BRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
    interrupt : OUT STD_LOGIC );
end;


architecture behav of paillier_fl_kernel is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "paillier_fl_kernel_paillier_fl_kernel,hls_ip_2022_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xczu7ev-ffvc1156-2-e,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=3.415938,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=315,HLS_SYN_LUT=355,HLS_VERSION=2022_2}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant C_S_AXI_DATA_WIDTH : INTEGER range 63 downto 0 := 20;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_boolean_0 : BOOLEAN := false;

    signal ap_rst_n_inv : STD_LOGIC;
    signal ap_start : STD_LOGIC;
    signal ap_done : STD_LOGIC;
    signal ap_idle : STD_LOGIC;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal ap_ready : STD_LOGIC;
    signal num_samples : STD_LOGIC_VECTOR (31 downto 0);
    signal num_clients : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln163_fu_61_p1 : STD_LOGIC_VECTOR (30 downto 0);
    signal trunc_ln163_reg_72 : STD_LOGIC_VECTOR (30 downto 0);
    signal icmp_ln178_fu_66_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln178_reg_77 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start : STD_LOGIC;
    signal grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_done : STD_LOGIC;
    signal grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_idle : STD_LOGIC;
    signal grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_ready : STD_LOGIC;
    signal grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_data_out_TREADY : STD_LOGIC;
    signal grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_data_in_TREADY : STD_LOGIC;
    signal grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_data_out_TDATA : STD_LOGIC_VECTOR (127 downto 0);
    signal grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_data_out_TVALID : STD_LOGIC;
    signal grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_return : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal regslice_both_data_out_U_apdone_blk : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_block_state2_on_subcall_done : BOOLEAN;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ST_fsm_state3_blk : STD_LOGIC;
    signal regslice_both_data_in_U_apdone_blk : STD_LOGIC;
    signal data_in_TDATA_int_regslice : STD_LOGIC_VECTOR (127 downto 0);
    signal data_in_TVALID_int_regslice : STD_LOGIC;
    signal data_in_TREADY_int_regslice : STD_LOGIC;
    signal regslice_both_data_in_U_ack_in : STD_LOGIC;
    signal regslice_both_grad_stream_U_apdone_blk : STD_LOGIC;
    signal grad_stream_TDATA_int_regslice : STD_LOGIC_VECTOR (127 downto 0);
    signal grad_stream_TVALID_int_regslice : STD_LOGIC;
    signal regslice_both_grad_stream_U_ack_in : STD_LOGIC;
    signal data_out_TREADY_int_regslice : STD_LOGIC;
    signal regslice_both_data_out_U_vld_out : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component paillier_fl_kernel_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        data_in_TVALID : IN STD_LOGIC;
        data_out_TREADY : IN STD_LOGIC;
        num_samples : IN STD_LOGIC_VECTOR (30 downto 0);
        data_in_TDATA : IN STD_LOGIC_VECTOR (127 downto 0);
        data_in_TREADY : OUT STD_LOGIC;
        data_out_TDATA : OUT STD_LOGIC_VECTOR (127 downto 0);
        data_out_TVALID : OUT STD_LOGIC;
        ap_return : OUT STD_LOGIC_VECTOR (0 downto 0) );
    end component;


    component paillier_fl_kernel_control_s_axi IS
    generic (
        C_S_AXI_ADDR_WIDTH : INTEGER;
        C_S_AXI_DATA_WIDTH : INTEGER );
    port (
        AWVALID : IN STD_LOGIC;
        AWREADY : OUT STD_LOGIC;
        AWADDR : IN STD_LOGIC_VECTOR (C_S_AXI_ADDR_WIDTH-1 downto 0);
        WVALID : IN STD_LOGIC;
        WREADY : OUT STD_LOGIC;
        WDATA : IN STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH-1 downto 0);
        WSTRB : IN STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH/8-1 downto 0);
        ARVALID : IN STD_LOGIC;
        ARREADY : OUT STD_LOGIC;
        ARADDR : IN STD_LOGIC_VECTOR (C_S_AXI_ADDR_WIDTH-1 downto 0);
        RVALID : OUT STD_LOGIC;
        RREADY : IN STD_LOGIC;
        RDATA : OUT STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH-1 downto 0);
        RRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
        BVALID : OUT STD_LOGIC;
        BREADY : IN STD_LOGIC;
        BRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
        ACLK : IN STD_LOGIC;
        ARESET : IN STD_LOGIC;
        ACLK_EN : IN STD_LOGIC;
        num_samples : OUT STD_LOGIC_VECTOR (31 downto 0);
        num_clients : OUT STD_LOGIC_VECTOR (31 downto 0);
        ap_start : OUT STD_LOGIC;
        interrupt : OUT STD_LOGIC;
        ap_ready : IN STD_LOGIC;
        ap_done : IN STD_LOGIC;
        ap_idle : IN STD_LOGIC );
    end component;


    component paillier_fl_kernel_regslice_both IS
    generic (
        DataWidth : INTEGER );
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        data_in : IN STD_LOGIC_VECTOR (DataWidth-1 downto 0);
        vld_in : IN STD_LOGIC;
        ack_in : OUT STD_LOGIC;
        data_out : OUT STD_LOGIC_VECTOR (DataWidth-1 downto 0);
        vld_out : OUT STD_LOGIC;
        ack_out : IN STD_LOGIC;
        apdone_blk : OUT STD_LOGIC );
    end component;



begin
    grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52 : component paillier_fl_kernel_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start,
        ap_done => grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_done,
        ap_idle => grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_idle,
        ap_ready => grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_ready,
        data_in_TVALID => data_in_TVALID_int_regslice,
        data_out_TREADY => grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_data_out_TREADY,
        num_samples => trunc_ln163_reg_72,
        data_in_TDATA => data_in_TDATA_int_regslice,
        data_in_TREADY => grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_data_in_TREADY,
        data_out_TDATA => grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_data_out_TDATA,
        data_out_TVALID => grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_data_out_TVALID,
        ap_return => grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_return);

    control_s_axi_U : component paillier_fl_kernel_control_s_axi
    generic map (
        C_S_AXI_ADDR_WIDTH => C_S_AXI_CONTROL_ADDR_WIDTH,
        C_S_AXI_DATA_WIDTH => C_S_AXI_CONTROL_DATA_WIDTH)
    port map (
        AWVALID => s_axi_control_AWVALID,
        AWREADY => s_axi_control_AWREADY,
        AWADDR => s_axi_control_AWADDR,
        WVALID => s_axi_control_WVALID,
        WREADY => s_axi_control_WREADY,
        WDATA => s_axi_control_WDATA,
        WSTRB => s_axi_control_WSTRB,
        ARVALID => s_axi_control_ARVALID,
        ARREADY => s_axi_control_ARREADY,
        ARADDR => s_axi_control_ARADDR,
        RVALID => s_axi_control_RVALID,
        RREADY => s_axi_control_RREADY,
        RDATA => s_axi_control_RDATA,
        RRESP => s_axi_control_RRESP,
        BVALID => s_axi_control_BVALID,
        BREADY => s_axi_control_BREADY,
        BRESP => s_axi_control_BRESP,
        ACLK => ap_clk,
        ARESET => ap_rst_n_inv,
        ACLK_EN => ap_const_logic_1,
        num_samples => num_samples,
        num_clients => num_clients,
        ap_start => ap_start,
        interrupt => interrupt,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_idle => ap_idle);

    regslice_both_data_in_U : component paillier_fl_kernel_regslice_both
    generic map (
        DataWidth => 128)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => data_in_TDATA,
        vld_in => data_in_TVALID,
        ack_in => regslice_both_data_in_U_ack_in,
        data_out => data_in_TDATA_int_regslice,
        vld_out => data_in_TVALID_int_regslice,
        ack_out => data_in_TREADY_int_regslice,
        apdone_blk => regslice_both_data_in_U_apdone_blk);

    regslice_both_grad_stream_U : component paillier_fl_kernel_regslice_both
    generic map (
        DataWidth => 128)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => grad_stream_TDATA,
        vld_in => grad_stream_TVALID,
        ack_in => regslice_both_grad_stream_U_ack_in,
        data_out => grad_stream_TDATA_int_regslice,
        vld_out => grad_stream_TVALID_int_regslice,
        ack_out => ap_const_logic_0,
        apdone_blk => regslice_both_grad_stream_U_apdone_blk);

    regslice_both_data_out_U : component paillier_fl_kernel_regslice_both
    generic map (
        DataWidth => 128)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_data_out_TDATA,
        vld_in => grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_data_out_TVALID,
        ack_in => data_out_TREADY_int_regslice,
        data_out => data_out_TDATA,
        vld_out => regslice_both_data_out_U_vld_out,
        ack_out => data_out_TREADY,
        apdone_blk => regslice_both_data_out_U_apdone_blk);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg <= ap_const_logic_0;
            else
                if (((icmp_ln178_fu_66_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                    grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_ready = ap_const_logic_1)) then 
                    grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state1)) then
                icmp_ln178_reg_77 <= icmp_ln178_fu_66_p2;
                trunc_ln163_reg_72 <= trunc_ln163_fu_61_p1;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, ap_CS_fsm_state3, regslice_both_data_out_U_apdone_blk, ap_block_state2_on_subcall_done)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_const_boolean_0 = ap_block_state2_on_subcall_done))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_state3 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state3) and (regslice_both_data_out_U_apdone_blk = ap_const_logic_0))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start)
    begin
        if ((ap_start = ap_const_logic_0)) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_ST_fsm_state2_blk_assign_proc : process(ap_block_state2_on_subcall_done)
    begin
        if ((ap_const_boolean_1 = ap_block_state2_on_subcall_done)) then 
            ap_ST_fsm_state2_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state2_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_ST_fsm_state3_blk_assign_proc : process(regslice_both_data_out_U_apdone_blk)
    begin
        if ((regslice_both_data_out_U_apdone_blk = ap_const_logic_1)) then 
            ap_ST_fsm_state3_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state3_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_block_state2_on_subcall_done_assign_proc : process(icmp_ln178_reg_77, grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_done)
    begin
                ap_block_state2_on_subcall_done <= ((grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_done = ap_const_logic_0) and (icmp_ln178_reg_77 = ap_const_lv1_1));
    end process;


    ap_done_assign_proc : process(ap_CS_fsm_state3, regslice_both_data_out_U_apdone_blk)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) and (regslice_both_data_out_U_apdone_blk = ap_const_logic_0))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state3, regslice_both_data_out_U_apdone_blk)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) and (regslice_both_data_out_U_apdone_blk = ap_const_logic_0))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_rst_n_inv_assign_proc : process(ap_rst_n)
    begin
                ap_rst_n_inv <= not(ap_rst_n);
    end process;

    data_in_TREADY <= regslice_both_data_in_U_ack_in;

    data_in_TREADY_int_regslice_assign_proc : process(icmp_ln178_reg_77, grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_data_in_TREADY, ap_CS_fsm_state2)
    begin
        if (((icmp_ln178_reg_77 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            data_in_TREADY_int_regslice <= grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_data_in_TREADY;
        else 
            data_in_TREADY_int_regslice <= ap_const_logic_0;
        end if; 
    end process;

    data_out_TVALID <= regslice_both_data_out_U_vld_out;
    grad_stream_TREADY <= regslice_both_grad_stream_U_ack_in;
    grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start <= grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_ap_start_reg;
    grp_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1_fu_52_data_out_TREADY <= (data_out_TREADY_int_regslice and ap_CS_fsm_state2);
    icmp_ln178_fu_66_p2 <= "1" when (signed(num_samples) > signed(ap_const_lv32_0)) else "0";
    trunc_ln163_fu_61_p1 <= num_samples(31 - 1 downto 0);
end behav;
