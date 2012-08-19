# Copyright (C) 2010 The Android Open Source Project
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

DEVICE_PACKAGE_OVERLAYS := device/samsung/epic4gtouchvzw/overlay \
                           device/samsung/epic4gtouch/overlay
		
$(call inherit-product, device/samsung/epic4gtouch/device.mk)

# Vzw Cellular cdma stuff
PRODUCT_PROPERTY_OVERRIDES += \
       ro.cdma.home.operator.numeric=310004 \
       ro.cdma.home.operator.alpha=Verizon \
       net.cdma.pppd.authtype=require-chap \
       net.cdma.pppd.user=user[SPACE]VerizonWireless

$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4330/device-bcm.mk)
$(call inherit-product-if-exists, vendor/samsung/epic4gtouch/epic4gtouch-vendor.mk)
$(call inherit-product, hardware/samsung/exynos4210.mk)
