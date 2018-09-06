# Initialise device config
$(call inherit-product, device/ulefone/t1/full_t1.mk)

TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="t1" \
    TARGET_DEVICE="t1"

PRODUCT_NAME := lineage_t1
PRODUCT_DEVICE := t1
