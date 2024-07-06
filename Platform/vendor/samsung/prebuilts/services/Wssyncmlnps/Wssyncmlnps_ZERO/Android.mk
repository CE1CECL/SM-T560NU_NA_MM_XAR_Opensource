LOCAL_PATH := $(call my-dir)
#==============================================================================
include $(CLEAR_VARS)
LOCAL_MODULE := wssyncmlnps2
LOCAL_MODULE_TAGS := optional
LOCAL_ARTIFACT_ID := Wssyncmlnps-700000-7.0.77
LOCAL_SRC_FILES := wssyncmlnps2-release.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)

LOCAL_PRIVILEGED_MODULE := true
LOCAL_CERTIFICATE := platform

LOCAL_REQUIRED_MODULES := libCryptionkey

include $(BUILD_PREBUILT)
