# Release name
PRODUCT_RELEASE_NAME := atenea

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/hexxa/atenea/device_atenea.mk)

TARGET_SCREEN_HEIGHT := 360
TARGET_SCREEN_WIDTH := 360

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := atenea
PRODUCT_NAME := cm_atenea
PRODUCT_BRAND := hexxa
PRODUCT_MODEL := atenea
PRODUCT_MANUFACTURER := hexxa
