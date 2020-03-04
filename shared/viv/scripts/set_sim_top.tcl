open_project /shared/labs/$PROJECT_NAME/$PROJECT_NAME.xpr

set_property source_mgmt_mode None [current_project]
set_property top $MODULE_NAME [get_filesets sim_1]
set_property top_lib xil_defaultlib [get_filesets sim_1]