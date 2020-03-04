create_project $PROJECT_NAME /shared/labs/$PROJECT_NAME -part xc7a35tcpg236-1

file mkdir /shared/labs/$PROJECT_NAME/$PROJECT_NAME.srcs/sources_1/new
file mkdir /shared/labs/$PROJECT_NAME/$PROJECT_NAME.srcs/constrs_1
file mkdir /shared/labs/$PROJECT_NAME/$PROJECT_NAME.srcs/constrs_1/new
file mkdir /shared/labs/$PROJECT_NAME/$PROJECT_NAME.srcs/sim_1/new

close [ open /shared/labs/$PROJECT_NAME/$PROJECT_NAME.srcs/constrs_1/new/basys3.xdc w ]
add_files -fileset constrs_1 /shared/labs/$PROJECT_NAME/$PROJECT_NAME.srcs/constrs_1/new/basys3.xdc