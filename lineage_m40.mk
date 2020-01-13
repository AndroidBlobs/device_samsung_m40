# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from m40 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := samsung
PRODUCT_DEVICE := m40
PRODUCT_MANUFACTURER := samsung
PRODUCT_NAME := lineage_m40
PRODUCT_MODEL := SM-M405F

PRODUCT_GMS_CLIENTID_BASE := android-samsung
TARGET_VENDOR := samsung
TARGET_VENDOR_PRODUCT_NAME := m40
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="m40dd-user 9 PPR1.180610.011 M405FDDS2ASL2 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := samsung/m40dd/m40:9/PPR1.180610.011/M405FDDS2ASL2:user/release-keys
