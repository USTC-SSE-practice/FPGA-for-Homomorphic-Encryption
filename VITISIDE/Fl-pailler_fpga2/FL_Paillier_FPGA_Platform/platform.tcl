# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\Administrator\VivadoProjects\Fl-pailler_fpga2\FL_Paillier_FPGA_Platform\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\Administrator\VivadoProjects\Fl-pailler_fpga2\FL_Paillier_FPGA_Platform\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {FL_Paillier_FPGA_Platform}\
-hw {C:\Users\Administrator\VivadoProjects\Fl-pailler_fpga2\design_1_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {C:/Users/Administrator/VivadoProjects/Fl-pailler_fpga2}

platform write
platform generate -domains 
platform active {FL_Paillier_FPGA_Platform}
platform generate
bsp reload
domain active {zynq_fsbl}
bsp reload
bsp reload
platform clean
platform generate
bsp removelib -name xilffs
bsp setlib -name xilffs -ver 4.8
bsp reload
bsp setlib -name xilflash -ver 4.9
bsp removelib -name xilflash
bsp removelib -name xilffs
bsp setlib -name xilffs -ver 4.8
bsp write
bsp reload
catch {bsp regenerate}
platform clean
platform generate
platform clean
platform generate
bsp setlib -name xilflash -ver 4.9
bsp write
bsp reload
catch {bsp regenerate}
domain active {standalone_domain}
bsp setlib -name xilffs -ver 4.8
bsp setlib -name xilflash -ver 4.9
bsp write
bsp reload
catch {bsp regenerate}
platform clean
platform generate
platform clean
platform generate
bsp reload
bsp config dependency_flags "-MMD -MP"
bsp config extra_compiler_flags "-mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -nostartfiles -g -Wall -Wextra -fno-tree-loop-distribute-patterns"
bsp reload
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
bsp write
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
bsp reload
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
