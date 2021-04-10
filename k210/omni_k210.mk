#
# Copyright 2017 The Android Open Source Project
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

# Release name
PRODUCT_RELEASE_NAME := k210

# Inherit from those products. Most specific first.
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/BQ/k210/device.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, vendor/omni/config/gsm.mk)


## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := k210
PRODUCT_NAME := omni_k210
PRODUCT_BRAND := BQru
PRODUCT_MANUFACTURER := BQru
PRODUCT_MODEL := BQ-5519G

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=BQru-5519G \
    PRODUCT_NAME=BQru-5519G \
    PRIVATE_BUILD_DESC="BQru-5519G 9 PPR1.180610.011  release-keys"

BUILD_FINGERPRINT := BQru/BQru-5519G/BQru-5519G:9/PPR1.180610.011/1576234481:user/release-keys
PLATFORM_SECURITY_PATCH := 2019-12-05
