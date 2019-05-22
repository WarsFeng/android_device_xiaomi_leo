# Release name
PRODUCT_RELEASE_NAME := leo

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
# TODO: Not add this file
$(call inherit-product, device/__MANUFACTURER__/__DEVICE__/device___DEVICE__.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := leo
PRODUCT_NAME := cm_leo
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := leo
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

## Use the latest approved GMS identifiers unless running a signed build
ifneq ($(SIGN_BUILD),true)
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=Xiaomi/leo/leo:7.0/NRD90M/7.11.16:user/release-keys \
    PRIVATE_BUILD_DESC="leo-user 7.0 NRD90M 7.11.16 release-keys"
endif
