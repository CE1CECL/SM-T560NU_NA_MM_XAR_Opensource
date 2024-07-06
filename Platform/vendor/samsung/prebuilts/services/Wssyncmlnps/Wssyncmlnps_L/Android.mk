LOCAL_PATH := $(call my-dir)
#==============================================================================
include $(CLEAR_VARS)
LOCAL_MODULE := wssyncmlnps
LOCAL_MODULE_TAGS := optional
LOCAL_ARTIFACT_ID := Wssyncmlnps-600000-6.0.64
LOCAL_SRC_FILES := wssyncmlnps-release.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)

LOCAL_PRIVILEGED_MODULE := true
LOCAL_CERTIFICATE := platform

LOCAL_REQUIRED_MODULES := libCryptionkey

include $(BUILD_PREBUILT)
