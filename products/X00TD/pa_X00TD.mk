#
# Copyright (C) 2018-2019 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Grab APNs
PRODUCT_COPY_FILES += device/asus/X00TD/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)


# Inherit from X00T device
$(call inherit-product, device/asus/X00TD/device.mk)

PRODUCT_BRAND := asus
PRODUCT_DEVICE := X00TD
PRODUCT_MANUFACTURER := asus
PRODUCT_NAME := pa_X00TD

PRODUCT_GMS_CLIENTID_BASE := android-asus

TARGET_VENDOR := asus
TARGET_VENDOR_PRODUCT_NAME := X00TD

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sdm660_64-user 9 PKQ1 1181 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Android/sdm660_64/sdm660_64:9/PKQ1/16.2017.1905.053-20190513:user/release-keys

# The following system and vendor props will be set by vendor init
PRODUCT_SYSTEM_PROPERTY_BLACKLIST := \
    ro.product.device \
    ro.product.model \
    ro.product.name

PRODUCT_VENDOR_PROPERTY_BLACKLIST := \
    ro.vendor.product.device \
    ro.vendor.product.model \
    ro.vendor.product.name
    
 # Paranoid Android platform
include vendor/pa/main.mk