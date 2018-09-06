$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/ulefone/t1/device.mk)

# Release name
PRODUCT_RELEASE_NAME := t1

PRODUCT_DEVICE := t1
PRODUCT_NAME := lineage_t1
PRODUCT_BRAND := Ulefone
PRODUCT_MODEL := t1
PRODUCT_MANUFACTURER := Ulefone
PRODUCT_RESTRICT_VENDOR_FILES := false

# Boot animation
TARGET_SCREEN_HEIGHT      := 1920
TARGET_SCREEN_WIDTH       := 1080
TARGET_BOOTANIMATION_NAME := 1080

PRODUCT_DEFAULT_LANGUAGE := de
PRODUCT_DEFAULT_REGION   := DE
