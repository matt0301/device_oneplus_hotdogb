#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from hotdogb device
$(call inherit-product, device/oneplus/hotdogb/device.mk)

# Inherit some common Derp stuff.
$(call inherit-product, vendor/derp/config/common_full_phone.mk)

# Setup Derp options
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm64
TARGET_FACE_UNLOCK_SUPPORTED := true

# Official-ify
DERP_BUILDTYPE := Official

#FOD Animations
EXTRA_FOD_ANIMATIONS := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := derp_hotdogb
PRODUCT_DEVICE := hotdogb
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := OnePlus 7T
PRODUCT_MANUFACTURER := OnePlus

PRODUCT_AAPT_CONFIG := normal
PRODUCT_CHARACTERISTICS := nosdcard

# Boot animation
scr_resolution := 1080
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Build info
BUILD_FINGERPRINT := "OnePlus/OnePlus7T/OnePlus7T:10/QKQ1.190716.003/2011052234:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=OnePlus7T \
    PRODUCT_NAME=OnePlus7T \
    PRIVATE_BUILD_DESC="hotdogb-user 10 QKQ1.190716.003 2011052234 release-keys"
PRODUCT_GMS_CLIENTID_BASE := android-oneplus
