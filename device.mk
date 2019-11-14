#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
$(call inherit-product-if-exists, vendor/oneplus/guacamoleb/guacamoleb-vendor.mk)

$(call inherit-product, device/oneplus/sm8150-common/common.mk)

# Vendor properties
-include $(LOCAL_PATH)/vendor_props.mk

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# Camera
PRODUCT_PACKAGES += \
    android.frameworks.displayservice@1.0 \
    android.hardware.camera.provider@2.4-impl \
    android.hardware.camera.provider@2.4-service_64 \
    libxml2 \
    vendor.oneplus.camera.CameraHIDL@1.0.vendor

# Device init scripts
PRODUCT_PACKAGES += \
    fstab.qcom

# tri-state key
PRODUCT_PACKAGES += \
    tri-state-key-calibrate_daemon
