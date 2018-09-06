
# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, device/ulefone/t1/device.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := T1
PRODUCT_DEVICE := t1
PRODUCT_BRAND := Ulefone
PRODUCT_MANUFACTURER := ulefone
PRODUCT_MODEL := p15v57c2k_gq_tee
