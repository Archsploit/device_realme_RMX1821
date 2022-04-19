
#
# Copyright (C) 2022 The PixelExperience Project
#
# SPDX-License-Identifier: Apache-2.0
#

# VNDK
PRODUCT_EXTRA_VNDK_VERSIONS := 29
PRODUCT_TARGET_VNDK_VERSION := 29

# Permissions
PRODUCT_COPY_FILES := \
	frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.fingerprint.xml \
	$(DEVICE_PATH)/configs/permissions/com.mediatek.op.ims.common.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.mediatek.op.ims.common.xml \
	$(DEVICE_PATH)/configs/permissions/privapp-permissions-mediatek.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-mediatek.xml \
	$(DEVICE_PATH)/configs/permissions/privapp-permissions-whitelist-com.android.launcher3.xml:$(TARGET_COPY_OUT_SYSTEM)/system_ext/etc/permissions/privapp-permissions-whitelist-com.android.launcher3.xml \
	$(DEVICE_PATH)/configs/permissions/privapp-permissions-whitelist-product.xml:$(TARGET_COPY_OUT_SYSTEM)/product/etc/permissions/privapp-permissions-whitelist-product.xml \
	$(DEVICE_PATH)/configs/permissions/privapp-permissions-whitelist-system.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-whitelist-system.xml \
	$(DEVICE_PATH)/configs/permissions/privapp-permission-whitelist-com.android.settings.xml:$(TARGET_COPY_OUT_SYSTEM)/system_ext/etc/permissions/privapp-permission-whitelist-com.android.settings.xml \
	$(DEVICE_PATH)/configs/permissions/privapp-permission-whitelist-com.android.systemui.xml:$(TARGET_COPY_OUT_SYSTEM)/system_ext/etc/permissions/privapp-permission-whitelist-com.android.systemui.xml

# GCam
PRODUCT_PACKAGES += \
    GoogleCameraGo

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
	$(DEVICE_PATH)/overlay \
	$(DEVICE_PATH)/overlay-pe

# Dependencies of kpoc_charger
PRODUCT_PACKAGES += \
    libsuspend \
    android.hardware.health@2.0

# Input Configs
PRODUCT_COPY_FILES += \
	$(DEVICE_PATH)/configs/input/idc/AVRCP.idc:$(TARGET_COPY_OUT_SYSTEM)/usr/idc/AVRCP.idc \
	$(DEVICE_PATH)/configs/input/keylayout/ACCDET.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/ACCDET.kl \
	$(DEVICE_PATH)/configs/input/keylayout/AVRCP.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/AVRCP.kl

# Audio Configs
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_TARGET_VNDK_VERSION)/etc/audio_policy_configuration.xml

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH)
	
# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-service.RMX1821
	
# ImsInit hack
PRODUCT_PACKAGES += \
    ImsInit

# Init
PRODUCT_PACKAGES += \
    fstab.mt6771 \
    fstab.mt6771_vendor \
    init.RMX1821.rc \
    init.oppo.fingerprints.rc \
    init.ago.rc \
    fstab.enableswap \
    perf_profile.sh

# Doze
PRODUCT_PACKAGES += \
    RealmeDoze

# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1-service.RMX1821

# RcsService
PRODUCT_PACKAGES += \
    RcsService

# HIDL
PRODUCT_PACKAGES += \
    libhidltransport \
    libhwbinder

# Tethering
PRODUCT_PACKAGES += \
    TetheringConfigOverlay

# Symbols
PRODUCT_PACKAGES += \
    libshim_showlogo

# Face Unlock
PRODUCT_PACKAGES += \
    FaceUnlockService

# IORap
PRODUCT_PROPERTY_OVERRIDES += \
    ro.iorapd.enable=true \
    iorapd.perfetto.enable=true \
    iorapd.readahead.enable=true

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.face.moto_unlock_service=true

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# IMS
$(call inherit-product, vendor/mediatek-ims/ims-vendor.mk)

# EngineerMode
#$(call inherit-product, vendor/mediatek/ims/mtk-engi.mk)

# Call proprietary blob setup
$(call inherit-product-if-exists, vendor/realme/RMX1821/RMX1821-vendor.mk)

# Parts
$(call inherit-product-if-exists, packages/apps/RealmeParts/parts.mk)

#Dirac
$(call inherit-product-if-exists, packages/apps/RealmeDirac/dirac.mk)

# Misc
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.controls.xml:system/etc/permissions/android.software.controls.xml

# Freeform Multiwindow
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.freeform_window_management.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.freeform_window_management.xml


