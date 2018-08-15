# Copyright 2014 The Android Open Source Project
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

# NFC config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/nfc/libnfc-nci.conf:system/etc/libnfc-nci.conf

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/treble_common.mk)
$(call inherit-product, vendor/du/config/common_full_phone.mk)

# Inherit from berkeley device
$(call inherit-product, device/huawei/berkeley/device.mk)

# Override Product Name for DirtyUnicorns
PRODUCT_NAME := du_berkeley
PRODUCT_DEVICE := berkeley
PRODUCT_BRAND := Huawei
PRODUCT_MODEL := berkeley

BUILD_FINGERPRINT := kirin970/kirin970/kirin970:8.1.0/OPM1.171019.011/jslave01241654:user/test-keys

# Security patch level override
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.override.security_patch=$(PLATFORM_SECURITY_PATCH)
