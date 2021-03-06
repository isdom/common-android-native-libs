LOCAL_PATH := $(call my-dir)


include $(CLEAR_VARS)
LOCAL_MODULE    := luabind

LOCAL_CPP_FEATURES += exceptions
LOCAL_CPP_FEATURES += rtti

LOCAL_SRC_FILES := \
		src/class.cpp \
		src/class_info.cpp \
		src/class_registry.cpp \
		src/class_rep.cpp \
		src/create_class.cpp \
		src/error.cpp \
		src/exception_handler.cpp \
		src/function.cpp \
		src/inheritance.cpp \
		src/link_compatibility.cpp \
		src/object_rep.cpp \
		src/open.cpp \
		src/pcall.cpp \
		src/scope.cpp \
		src/stack_content_by_name.cpp \
		src/weak_ref.cpp \
		src/wrapper_base.cpp

LOCAL_STATIC_LIBRARIES := lua

include $(BUILD_STATIC_LIBRARY)
