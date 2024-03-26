idf_component_register(
	INCLUDE_DIRS
		"project"
)

target_link_libraries(
	${COMPONENT_LIB}
	INTERFACE "${CMAKE_CURRENT_LIST_DIR}/project/gen/libtflm.a"
)
