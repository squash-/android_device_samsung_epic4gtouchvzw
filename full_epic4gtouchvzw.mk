# Copyright (C) 2009 The Android Open Source Project
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
# This file is the build configuration for a full Android
# build for crespo hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps).
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
#$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
#$(call inherit-product, $(SRC_TARGET_DIR)/product/full.mk)
$(call inherit-product, device/samsung/epic4gtouchvzw/epic4gtouchvzw.mk)


# Discard inherited values and use our own instead.
PRODUCT_NAME := full_epic4gtouchvzw
PRODUCT_DEVICE := epic4gtouchvzw
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SPH-D710

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=SPH-D710 \
    PRODUCT_DEVICE=SPH-D710 \
    BUILD_ID=IMM76I \
    BUILD_DISPLAY_ID=IMM76L \
    BUILD_PRODUCT=epic4gtouchvzw \
    BUILD_FINGERPRINT=samsung/SPH-D710/SPH-D710:4.0.4/IMM76I/FF18:user/release-keys \
    PRIVATE_BUILD_DESC="SPH-D710-user 4.0.4 IMM76I FF18 release-keys"
