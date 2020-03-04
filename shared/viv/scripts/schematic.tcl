open_project /shared/labs/$PROJECT_NAME/$PROJECT_NAME.xpr

set_property source_mgmt_mode None [current_project]
set_property top $MODULE_NAME [get_filesets sources_1]

synth_design -rtl -name rtl_1
start_gui -quiet
write_schematic -format svg -name Schematic /shared/labs/$PROJECT_NAME/schematic.svg -force
close_design -quiet
exit