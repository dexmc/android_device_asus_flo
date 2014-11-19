# Release name
PRODUCT_RELEASE_NAME := Nexus7

# Inherit AOSP device configuration
$(call inherit-product, device/asus/flo/full_flo.mk)

# Inherit common product files.
$(call inherit-product, vendor/eos/config/common.mk)

# Inherit tablet config.
$(call inherit-product, vendor/eos/config/common_full_tablet_wifionly.mk)

# Setup device specific product configuration.
PRODUCT_DEVICE := flo
PRODUCT_NAME := eos_flo
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := Asus

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME="razor" BUILD_FINGERPRINT="google/razor/flo:5.0/LRX21T/1576899:user/release-keys" PRIVATE_BUILD_DESC="razor-user 5.0 LRX21T 1576899 release-keys"

# Copy device specific prebuilt files.
PRODUCT_COPY_FILES += \
    vendor/eos/prebuilt/common/bootanimations/BOOTANIMATION-1080x1920.zip:system/media/bootanimation.zip
