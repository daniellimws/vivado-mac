open_project /shared/labs/$PROJECT_NAME/$PROJECT_NAME.xpr

set_property SOURCE_SET sources_1 [get_filesets sim_1]
close [ open /shared/labs/$PROJECT_NAME/$PROJECT_NAME.srcs/sim_1/new/$SIM_NAME.v w ]
add_files -fileset sim_1 /shared/labs/$PROJECT_NAME/$PROJECT_NAME.srcs/sim_1/new/$SIM_NAME.v