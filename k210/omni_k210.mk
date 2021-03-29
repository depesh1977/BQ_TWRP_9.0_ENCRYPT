# Release name
PRODUCT_RELEASE_NAME := k210

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := k210
PRODUCT_NAME := omni_k210

PRODUCT_BRAND := BQru
PRODUCT_MANUFACTURER := BQru
PRODUCT_MODEL := BQ-5519G

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=BQru-5519G \
    PRODUCT_NAME=BQru-5519G \
    PRIVATE_BUILD_DESC="BQru-5519G 9 PPR1.180610.011  release-keys"

BUILD_FINGERPRINT := BQru/BQru-5519G/BQru-5519G:9/PPR1.180610.011/1576234481:user/release-keys
PLATFORM_SECURITY_PATCH := 2019-12-05

#PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
#	ro.adb.secure=0 \
#    ro.secure=1 \
#    sys.usb.config=mtp 

