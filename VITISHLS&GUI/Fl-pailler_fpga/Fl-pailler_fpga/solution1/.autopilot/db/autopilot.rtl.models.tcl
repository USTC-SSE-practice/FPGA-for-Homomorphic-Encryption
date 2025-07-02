set SynModuleInfo {
  {SRCNAME paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1 MODELNAME paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1 RTLNAME paillier_fl_kernel_paillier_fl_kernel_Pipeline_VITIS_LOOP_178_1
    SUBMODULES {
      {MODELNAME paillier_fl_kernel_flow_control_loop_pipe_sequential_init RTLNAME paillier_fl_kernel_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME paillier_fl_kernel_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME paillier_fl_kernel MODELNAME paillier_fl_kernel RTLNAME paillier_fl_kernel IS_TOP 1
    SUBMODULES {
      {MODELNAME paillier_fl_kernel_control_s_axi RTLNAME paillier_fl_kernel_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME paillier_fl_kernel_regslice_both RTLNAME paillier_fl_kernel_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME paillier_fl_kernel_regslice_both_U}
    }
  }
}
