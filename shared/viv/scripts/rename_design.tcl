open_project /shared/labs/$PROJECT_NAME/$PROJECT_NAME.xpr

file rename /shared/labs/$PROJECT_NAME/$PROJECT_NAME.srcs/sources_1/new/$OLD_MODULE_NAME.v /shared/labs/$PROJECT_NAME/$PROJECT_NAME.srcs/sources_1/new/$NEW_MODULE_NAME.v

remove_files -fileset sources_1 $OLD_MODULE_NAME.v
add_files /shared/labs/$PROJECT_NAME/$PROJECT_NAME.srcs/sources_1/new/$NEW_MODULE_NAME.v