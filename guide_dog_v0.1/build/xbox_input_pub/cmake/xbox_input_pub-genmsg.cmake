# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "xbox_input_pub: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ixbox_input_pub:/home/nvidia/ros_ws/guide_dog_v0.1/src/xbox_input_pub/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(xbox_input_pub_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/nvidia/ros_ws/guide_dog_v0.1/src/xbox_input_pub/msg/xbox_input.msg" NAME_WE)
add_custom_target(_xbox_input_pub_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xbox_input_pub" "/home/nvidia/ros_ws/guide_dog_v0.1/src/xbox_input_pub/msg/xbox_input.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(xbox_input_pub
  "/home/nvidia/ros_ws/guide_dog_v0.1/src/xbox_input_pub/msg/xbox_input.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xbox_input_pub
)

### Generating Services

### Generating Module File
_generate_module_cpp(xbox_input_pub
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xbox_input_pub
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(xbox_input_pub_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(xbox_input_pub_generate_messages xbox_input_pub_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/ros_ws/guide_dog_v0.1/src/xbox_input_pub/msg/xbox_input.msg" NAME_WE)
add_dependencies(xbox_input_pub_generate_messages_cpp _xbox_input_pub_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(xbox_input_pub_gencpp)
add_dependencies(xbox_input_pub_gencpp xbox_input_pub_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS xbox_input_pub_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(xbox_input_pub
  "/home/nvidia/ros_ws/guide_dog_v0.1/src/xbox_input_pub/msg/xbox_input.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xbox_input_pub
)

### Generating Services

### Generating Module File
_generate_module_eus(xbox_input_pub
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xbox_input_pub
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(xbox_input_pub_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(xbox_input_pub_generate_messages xbox_input_pub_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/ros_ws/guide_dog_v0.1/src/xbox_input_pub/msg/xbox_input.msg" NAME_WE)
add_dependencies(xbox_input_pub_generate_messages_eus _xbox_input_pub_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(xbox_input_pub_geneus)
add_dependencies(xbox_input_pub_geneus xbox_input_pub_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS xbox_input_pub_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(xbox_input_pub
  "/home/nvidia/ros_ws/guide_dog_v0.1/src/xbox_input_pub/msg/xbox_input.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xbox_input_pub
)

### Generating Services

### Generating Module File
_generate_module_lisp(xbox_input_pub
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xbox_input_pub
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(xbox_input_pub_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(xbox_input_pub_generate_messages xbox_input_pub_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/ros_ws/guide_dog_v0.1/src/xbox_input_pub/msg/xbox_input.msg" NAME_WE)
add_dependencies(xbox_input_pub_generate_messages_lisp _xbox_input_pub_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(xbox_input_pub_genlisp)
add_dependencies(xbox_input_pub_genlisp xbox_input_pub_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS xbox_input_pub_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(xbox_input_pub
  "/home/nvidia/ros_ws/guide_dog_v0.1/src/xbox_input_pub/msg/xbox_input.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xbox_input_pub
)

### Generating Services

### Generating Module File
_generate_module_nodejs(xbox_input_pub
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xbox_input_pub
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(xbox_input_pub_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(xbox_input_pub_generate_messages xbox_input_pub_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/ros_ws/guide_dog_v0.1/src/xbox_input_pub/msg/xbox_input.msg" NAME_WE)
add_dependencies(xbox_input_pub_generate_messages_nodejs _xbox_input_pub_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(xbox_input_pub_gennodejs)
add_dependencies(xbox_input_pub_gennodejs xbox_input_pub_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS xbox_input_pub_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(xbox_input_pub
  "/home/nvidia/ros_ws/guide_dog_v0.1/src/xbox_input_pub/msg/xbox_input.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xbox_input_pub
)

### Generating Services

### Generating Module File
_generate_module_py(xbox_input_pub
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xbox_input_pub
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(xbox_input_pub_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(xbox_input_pub_generate_messages xbox_input_pub_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/ros_ws/guide_dog_v0.1/src/xbox_input_pub/msg/xbox_input.msg" NAME_WE)
add_dependencies(xbox_input_pub_generate_messages_py _xbox_input_pub_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(xbox_input_pub_genpy)
add_dependencies(xbox_input_pub_genpy xbox_input_pub_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS xbox_input_pub_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xbox_input_pub)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xbox_input_pub
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(xbox_input_pub_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xbox_input_pub)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xbox_input_pub
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(xbox_input_pub_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xbox_input_pub)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xbox_input_pub
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(xbox_input_pub_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xbox_input_pub)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xbox_input_pub
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(xbox_input_pub_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xbox_input_pub)
  install(CODE "execute_process(COMMAND \"/home/nvidia/mambaforge/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xbox_input_pub\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xbox_input_pub
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(xbox_input_pub_generate_messages_py std_msgs_generate_messages_py)
endif()
