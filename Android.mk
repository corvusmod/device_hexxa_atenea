LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),Q)

include $(call all-makefiles-under,$(LOCAL_PATH))

endif
