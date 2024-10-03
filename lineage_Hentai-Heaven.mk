#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from Hentai-Heaven device
$(call inherit-product, device/TECNO/Hentai-Heaven/device.mk)

PRODUCT_BRAND := TECNO
PRODUCT_DEVICE := Hentai-Heaven
PRODUCT_NAME := lineage_Hentai-Heaven
PRODUCT_MODEL := Tecno Spark 9 Pro
PRODUCT_MANUFACTURER := Tecno Mobility Limited

PRODUCT_GMS_CLIENTID_BASE := android-tecno

TARGET_VENDOR := TECNO
TARGET_VENDOR_PRODUCT_NAME := Hentai-Heaven
TARGET_RELEASE := Hentai-Heaven

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=KH7n-OP \
    RISING_CHIPSET="Helio G85" \
    PRIVATE_BUILD_DESC="sys_tssi_64_tecno-user 12 SP1A.210812.016 585038 release-keys"

BUILD_FINGERPRINT := TECNO/KH7n-OP/TECNO-KH7n:12/SP1A.210812.016/240416V962:user/release-keys

# Rising Stuff
RISING_MAINTAINER=isus203
WITH_GMS := true
TARGET_CORE_GMS := true
PRODUCT_PACKAGES += \
   MarkupGoogle \
   LatinIMEGooglePrebuilt \
   Velvet \
   PrebuiltDeskClockGoogle

PRODUCT_NO_CAMERA := false
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_USE_GOOGLE_TELEPHONY := true
