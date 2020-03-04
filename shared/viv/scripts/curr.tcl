create_project project_1 /shared/labs/project_1 -part xc7a35tcpg236-1

file mkdir /shared/labs/project_1/project_1.srcs/sources_1/new
file mkdir /shared/labs/project_1/project_1.srcs/constrs_1
file mkdir /shared/labs/project_1/project_1.srcs/constrs_1/new
file mkdir /shared/labs/project_1/project_1.srcs/sim_1/new

close [ open /shared/labs/project_1/project_1.srcs/constrs_1/new/basys3.xdc w ]
add_files -fileset constrs_1 /shared/labs/project_1/project_1.srcs/constrs_1/new/basys3.xdc