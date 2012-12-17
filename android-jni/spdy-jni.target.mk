# This file is generated by gyp; do not edit.

include $(CLEAR_VARS)

LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE := lib_spdylay_android_jni_spdy_jni_gyp
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_TAGS := optional
gyp_intermediate_dir := $(call local-intermediates-dir)
gyp_shared_intermediate_dir := $(call intermediates-dir-for,GYP,shared)

# Make sure our deps are built first.
GYP_TARGET_DEPENDENCIES := \
	$(call intermediates-dir-for,STATIC_LIBRARIES,spdylay_libspdy_gyp)/spdylay_libspdy_gyp.a \
	$(call intermediates-dir-for,STATIC_LIBRARIES,third_party_zlib_zlib_gyp)/third_party_zlib_zlib_gyp.a

GYP_GENERATED_OUTPUTS :=

# Make sure our deps and generated files are built first.
LOCAL_ADDITIONAL_DEPENDENCIES := $(GYP_TARGET_DEPENDENCIES) $(GYP_GENERATED_OUTPUTS)

LOCAL_GENERATED_SOURCES :=

GYP_COPIED_SOURCE_ORIGIN_DIRS :=

LOCAL_SRC_FILES := \
	spdylay/android-jni/jni/com_cybertk_android_spdylay.cpp


# Flags passed to both C and C++ files.
MY_CFLAGS :=

MY_CFLAGS_C :=

MY_DEFS := \
	'-DANDROID'

LOCAL_CFLAGS := $(MY_CFLAGS_C) $(MY_CFLAGS) $(MY_DEFS)

# Include paths placed before CFLAGS/CPPFLAGS
LOCAL_C_INCLUDES :=

LOCAL_C_INCLUDES := $(GYP_COPIED_SOURCE_ORIGIN_DIRS) $(LOCAL_C_INCLUDES)

# Flags passed to only C++ (and not C) files.
LOCAL_CPPFLAGS :=

### Rules for final target.

LOCAL_LDFLAGS :=


LOCAL_STATIC_LIBRARIES := \
	spdylay_libspdy_gyp \
	third_party_zlib_zlib_gyp

# Enable grouping to fix circular references
LOCAL_GROUP_STATIC_LIBRARIES := true

LOCAL_SHARED_LIBRARIES := \
	libz

# Add target alias to "gyp_all_modules" target.
.PHONY: gyp_all_modules
gyp_all_modules: lib_spdylay_android_jni_spdy_jni_gyp

# Alias gyp target name.
.PHONY: spdy-jni
spdy-jni: lib_spdylay_android_jni_spdy_jni_gyp

LOCAL_PRELINK_MODULE := false
include $(BUILD_SHARED_LIBRARY)
