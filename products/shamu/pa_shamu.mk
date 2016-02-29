# Copyright (C) 2014 ParanoidAndroid Project
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

# Check for target product
ifeq (pa_shamu,$(TARGET_PRODUCT))

# Include ParanoidAndroid common configuration
TARGET_BOOT_ANIMATION_RES := 1440
include vendor/pa/main.mk

# Inherit AOSP device configuration
$(call inherit-product, device/moto/shamu/full_shamu.mk)

# Override AOSP build properties
PRODUCT_NAME := pa_shamu
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 6
PRODUCT_MANUFACTURER := motorola
PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_NAME=shamu \
	BUILD_FINGERPRINT="google/shamu/shamu:6.0/MRA58K/2256973:user/release-keys" \
	PRIVATE_BUILD_DESC="shamu-user 6.0 MRA58K 2256973 release-keys"

endif
