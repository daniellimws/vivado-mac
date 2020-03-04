open_project /shared/labs/$PROJECT_NAME/$PROJECT_NAME.xpr

set_property source_mgmt_mode None [current_project]
set_property top $MODULE_NAME [get_filesets sources_1]

reset_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 4