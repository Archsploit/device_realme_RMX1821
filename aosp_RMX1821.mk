
#
# Copyright (C) 2020 The PixelExperience Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common AOSP stuff
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common PE stuff
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

TARGET_SUPPORTS_QUICK_TAP := true
TARGET_BOOT_ANIMATION_RES:= 720

# Inherit from Realme RMX1821
$(call inherit-product, device/realme/RMX1821/device.mk)

PRODUCT_NAME := aosp_RMX1821
PRODUCT_DEVICE := RMX1821
PRODUCT_MANUFACTURER := Realme
PRODUCT_BRAND := Realme
PRODUCT_MODEL := RMX1821

PRODUCT_GMS_CLIENTID_BASE := android-oppo
