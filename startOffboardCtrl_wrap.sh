#!/bin/bash
# wrap1.sh
# needs to  chmod +x wrapper.sh, or else it doesnt excecute
trap "exit" INT TERM ERR
trap "kill 0" EXIT

source $(echo $EIT_DIR)/install/setup.bash &
source $(echo $EIT_DIR)/src/eit-playground/setup_gazebo.bash &
ros2 run eit_playground offboard_ctrl.py

wait
