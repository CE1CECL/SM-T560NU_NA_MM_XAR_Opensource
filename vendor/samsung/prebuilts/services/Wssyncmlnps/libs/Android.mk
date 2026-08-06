LOCAL_PATH := $(call my-dir)
#==============================================================================

####################### So lib files ########################
#==============================================================================

include $(CLEAR_VARS)
LOCAL_MODULE := libCryptionkey
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional

ifeq ($(TARGET_ARCH),X86)
    LOCAL_SRC_FILES := X86/$(LOCAL_MODULE).so
endif

ifeq ($(TARGET_ARCH),arm)
    LOCAL_SRC_FILES := $(TARGET_CPU_ABI)/$(LOCAL_MODULE).so
endif

ifeq ($(TARGET_ARCH),arm64)

ifeq ($(TARGET_2ND_ARCH),arm)
    LOCAL_SRC_FILES_32 := $(TARGET_2ND_CPU_ABI)/$(LOCAL_MODULE).so
    LOCAL_SRC_FILES_64 := arm64-v8a/$(LOCAL_MODULE).so
    LOCAL_MULTILIB := both
else
    LOCAL_SRC_FILES := arm64-v8a/$(LOCAL_MODULE).so
endif
    
endif


include $(BUILD_PREBUILT)
#==============================================================================
