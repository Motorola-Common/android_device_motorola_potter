#
# Copyright (C) 2016 The CyanogenMod Project
#               2017 The LineageOS Project
#               2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

DEVICE_PATH := device/motorola/potter

# Platform
TARGET_BOARD_PLATFORM := msm8953
TARGET_BOARD_PLATFORM_GPU := qcom-adreno506

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8953

# Asserts
TARGET_OTA_ASSERT_DEVICE := potter,potter_retail

# Init
TARGET_INIT_VENDOR_LIB := libinit_potter
TARGET_RECOVERY_DEVICE_MODULES := libinit_potter

# Kernel
TARGET_KERNEL_CLANG_COMPILE := true
TARGET_USE_SDCLANG := true
TARGET_KERNEL_CONFIG := potter_defconfig

# DT2W
TARGET_TAP_TO_WAKE_NODE := "/sys/android_touch/doubletap2wake"

# Display
TARGET_USES_NEW_ION_API := true
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024

# NFC
NXP_CHIP_TYPE := PN551
BOARD_NFC_HAL_SUFFIX := $(TARGET_BOARD_PLATFORM)

# Partitions
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432    #    16484 * 1024 mmcblk0p38
BOARD_CACHEIMAGE_PARTITION_SIZE := 260014080      #   253920 * 1024 mmcblk0p52
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3510353920    #  3428080 * 1024 mmcblk0p53
BOARD_USERDATAIMAGE_PARTITION_SIZE := 26401026048 # 25782252 * 1024 mmcblk0p54

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)/releasetools

# SELinux
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# inherit from motorola msm8953-common
-include device/motorola/msm8953-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/motorola/cedric/BoardConfigVendor.mk

