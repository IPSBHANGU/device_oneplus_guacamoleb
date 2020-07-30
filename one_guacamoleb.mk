#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from guacamoleb device
$(call inherit-product, device/oneplus/guacamoleb/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/one/config/common.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := one_guacamoleb
PRODUCT_DEVICE := guacamoleb
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := GM1905
PRODUCT_MANUFACTURER := OnePlus

# Add Face Unclock
TARGET_GAPPS_ARCH := arm64

PRODUCT_AAPT_CONFIG := xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi
PRODUCT_CHARACTERISTICS := nosdcard

# Boot animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

# Build info
BUILD_FINGERPRINT := "OnePlus/OnePlus7/OnePlus7:10/QKQ1.190716.003/2005122138:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=OnePlus7 \
    PRODUCT_NAME=OnePlus7 \
    BUILD_NUMBER=2005122138 \
    BUILD_ID=QKQ1.190716.003

PLATFORM_SECURITY_PATCH_OVERRIDE := 2020-05-01

PRODUCT_ANDROID_CLIENTID_BASE := android-oneplus
