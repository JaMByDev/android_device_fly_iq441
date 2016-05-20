## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := IQ441

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/fly/iq441/device_iq441.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

PRODUCT_NAME := cm_iq441
PRODUCT_DEVICE := iq441
PRODUCT_MODEL := iq441
PRODUCT_RELEASE_NAME := iq441
PRODUCT_BRAND := FLY
PRODUCT_MANUFACTURER := FLY
