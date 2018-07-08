#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
# Copyright (C) 2018 The LineageOS Project
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

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.nfc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.hcef.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hcef.xml \

# Audio
PRODUCT_COPY_FILES +=  \
    $(LOCAL_PATH)/audio/audio_platform_info_extcodec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_extcodec.xml \
    $(LOCAL_PATH)/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
    $(LOCAL_PATH)/audio/audio_ext_spkr.conf:s$(TARGET_COPY_OUT_VENDOR)/etc/audio_ext_spkr.conf \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml

# Camera
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/camera/msm8953_mot_potter_camera.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/msm8953_mot_potter_camera.xml \
    $(LOCAL_PATH)/configs/camera/mot_ov5695_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/mot_ov5695_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/mot_imx362_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/mot_imx362_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/mot_s5k2l7_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/mot_s5k2l7_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/mot_s5k2l7sa_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/mot_s5k2l7sa_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/vfwconfig.json:$(TARGET_COPY_OUT_VENDOR)/etc/camera/vfwconfig.json

# Display
PRODUCT_PACKAGES += \
    vendor.display.config@1.0 \
    vendor.display.config@1.0_vendor

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media_profiles.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_vendor.xml \
    $(LOCAL_PATH)/configs/media_profiles.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles.xml

# NFC
PRODUCT_COPY_FILES += \
    frameworks/base/nfc-extras/com.android.nfc_extras.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.android.nfc_extras.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/libnfc-brcm.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-brcm.conf \
    $(LOCAL_PATH)/configs/libnfc-nxp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nxp.conf

PRODUCT_PACKAGES += \
    libnfc \
    libnfc_jni \
    nfc_nci.msm8953 \
    NfcNci \
    Tag \
    com.android.nfc_extras \
    android.hardware.nfc@1.0-impl \
    android.hardware.nfc@1.0-service

# Releasetools script
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/check_features.sh:$(TARGET_COPY_OUT_VENDOR)/bin/check_features.sh

# Overlay
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# Ramdisk
PRODUCT_PACKAGES += \
    init.qcom.mot_device.rc \
    init.mmi.mot_device.rc

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal-engine-potter.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine.conf

# Wifi Symlinks
PRODUCT_PACKAGES += \
    WCNSS_qcom_cfg.ini \
    WCNSS_qcom_wlan_nv.bin \
    WCNSS_qcom_wlan_nv_Argentina.bin \
    WCNSS_qcom_wlan_nv_Brazil.bin \
    WCNSS_qcom_wlan_nv_India.bin \
    WCNSS_wlan_dictionary.dat

# ZAF
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/zaf/zaf_mot_imx362.json:$(TARGET_COPY_OUT_VENDOR)/etc/zaf/zaf_mot_imx362.json \
    $(LOCAL_PATH)/configs/zaf/zaf_mot_s5k2l7.json:$(TARGET_COPY_OUT_VENDOR)/etc/zaf/zaf_mot_s5k2l7.json

# Inherit from motorola msm8953-common
TARGET_BOARD_PLATFORM := msm8953
$(call inherit-product, device/motorola/msm8953-common/common.mk)
