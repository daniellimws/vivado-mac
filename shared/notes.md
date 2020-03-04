### Things to install
sudo apt update
sudo apt install -y libxrender1 libxtst6 libxi6 

export LIBRARY_PATH=/usr/lib/x86_64-linux-gnu:$LIBRARY_PATH

### Create Project
create_project test_project /home/osboxes/test_project -part xc7a35tcpg236-1

### Open Project
open_project /home/osboxes/test_project/test_project.xpr

### Design source
#### Create
file mkdir /home/osboxes/test_project/test_project.srcs/sources_1/new
close [ open /home/osboxes/test_project/test_project.srcs/sources_1/new/testv1.v w ]
add_files /home/osboxes/test_project/test_project.srcs/sources_1/new/testv1.v
close [ open /home/osboxes/test_project/test_project.srcs/sources_1/new/testv2.v w ]
add_files /home/osboxes/test_project/test_project.srcs/sources_1/new/testv2.v

#### Set as top
set_property source_mgmt_mode None [current_project]
set_property top testv2 [current_fileset]
update_compile_order -fileset sources_1

#### Export schematic
synth_design -rtl -name rtl_1
write_schematic -format pdf -name Schematic /home/osboxes/schematic.pdf -force
close_design

### Constraints
file mkdir /home/osboxes/test_project/test_project.srcs/constrs_1
file mkdir /home/osboxes/test_project/test_project.srcs/constrs_1/new
close [ open /home/osboxes/test_project/test_project.srcs/constrs_1/new/basys3.xdc w ]
add_files -fileset constrs_1 /home/osboxes/test_project/test_project.srcs/constrs_1/new/basys3.xdc

### Simulation
#### Create
file mkdir /home/osboxes/test_project/test_project.srcs/sim_1/new
set_property SOURCE_SET sources_1 [get_filesets sim_1]
close [ open /home/osboxes/test_project/test_project.srcs/sim_1/new/test_sim1.v w ]
add_files -fileset sim_1 /home/osboxes/test_project/test_project.srcs/sim_1/new/test_sim1.v
update_compile_order -fileset sim_1
set_property SOURCE_SET sources_1 [get_filesets sim_1]
close [ open /home/osboxes/test_project/test_project.srcs/sim_1/new/test_sim2.v w ]
add_files -fileset sim_1 /home/osboxes/test_project/test_project.srcs/sim_1/new/test_sim2.v
update_compile_order -fileset sim_1

#### Set as top
set_property top test_sim1 [get_filesets sim_1]
set_property top_lib xil_defaultlib [get_filesets sim_1]
update_compile_order -fileset sim_1

#### Run simulation
launch_simulation

### Generate bitstream
reset_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 4

### Program device
open_hw
connect_hw_server
open_hw_target
current_hw_device [get_hw_devices xc7a35t_0]
refresh_hw_device -update_hw_probes false [lindex [get_hw_devices xc7a35t_0] 0]
set_property PROBES.FILE {} [get_hw_devices xc7a35t_0]
set_property FULL_PROBES.FILE {} [get_hw_devices xc7a35t_0]
set_property PROGRAM.FILE {/home/osboxes/assignment_3/assignment_3.runs/impl_1/main.bit} [get_hw_devices xc7a35t_0]
program_hw_devices [get_hw_devices xc7a35t_0]
refresh_hw_device [lindex [get_hw_devices xc7a35t_0] 0]
close_hw