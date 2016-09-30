# Release name
PRODUCT_RELEASE_NAME := Q

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/elephone/Q/device_Q.mk)

TARGET_SCREEN_HEIGHT := 432
TARGET_SCREEN_WIDTH := 240

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := Q
PRODUCT_NAME := cm_Q
PRODUCT_BRAND := elephone
PRODUCT_MODEL := Q
PRODUCT_MANUFACTURER := elephone
