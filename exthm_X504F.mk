#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/exthm/config/common.mk)

# Inherit from X504F device
$(call inherit-product, device/lenovo/X504F/device.mk)

PRODUCT_DEVICE := X504F
PRODUCT_NAME := exthm_X504F
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo TB-X504F
PRODUCT_MANUFACTURER := lenovo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="hq_msm8917_64-user 7.1.1 NMF26F 1129 release-keys"

BUILD_FINGERPRINT := Lenovo/LenovoTB-X504F/X504F:7.1.1/NMF26F/TB-X504F_S000007_180621_ROW:user/release-keys
