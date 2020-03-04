#!/bin/zsh

cp -R /shared/labs/$PROJECT_NAME/$PROJECT_NAME.sim/sim_1/behav/xsim /tmp
cd /tmp/xsim
xsim -gui $MODULE_NAME_behav
rm -rf /tmp/xsim
exit