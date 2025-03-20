cmake_minimum_required(VERSION 3.0.2)
project(my_gazebo_launch)

## Find catkin macros and libraries
find_package(catkin REQUIRED COMPONENTS
  gazebo_ros
  roscpp
)

## System dependencies are found with CMake's conventions

catkin_package(
  CATKIN_DEPENDS gazebo_ros roscpp rospy
)

###########
## Build ##
###########

## Specify additional locations of header files
include_directories(
  ${catkin_INCLUDE_DIRS}
)

#############
## Install ##
#############

## Mark launch files for installation
install(DIRECTORY launch/
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/launch
)

## If you have world files or other files, install them too
install(DIRECTORY worlds/
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/worlds
)

## Other potential files for installation
install(FILES
  # other necessary files like configuration files, etc.
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)

