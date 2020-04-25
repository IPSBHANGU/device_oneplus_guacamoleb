#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
$(call inherit-product, vendor/oneplus/guacamoleb/guacamoleb-vendor.mk)
$(call inherit-product, device/oneplus/sm8150-common/common.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Vendor properties
-include $(LOCAL_PATH)/vendor_props.mk

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-stag

# Camera
PRODUCT_PACKAGES += \
    android.frameworks.displayservice@1.0 \
    android.hardware.camera.provider@2.4-impl \
    android.hardware.camera.provider@2.4-service_64 \
    libxml2 \
    Snap \
    vendor.oneplus.camera.CameraHIDL@1.0.vendor \
    vendor.qti.hardware.camera.device@1.0.vendor

# Device init scripts
PRODUCT_PACKAGES += \
    fstab.qcom

# tri-state key
PRODUCT_PACKAGES += \
    tri-state-key-calibrate_daemon
