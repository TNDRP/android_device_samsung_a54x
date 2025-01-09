#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from m54x device
$(call inherit-product, device/samsung/m54x/device.mk)

PRODUCT_DEVICE := m54x
PRODUCT_NAME := twrp_m54x
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-M546B
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="m54xxx-user 13 TP1A.220624.014 M546BXXU3AWH1 release-keys"

BUILD_FINGERPRINT := samsung/m54xxx/m54x:13/TP1A.220624.014/M546BXXU3AWH1:user/release-keys
