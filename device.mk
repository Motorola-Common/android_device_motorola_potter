#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
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

# Overlay
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# Camera
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/camera/msm8953_mot_potter_camera.xml:system/etc/camera/msm8953_mot_potter_camera.xml \
    $(LOCAL_PATH)/configs/camera/mot_ov5695_chromatix.xml:system/etc/camera/mot_ov5695_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/mot_imx362_chromatix.xml:system/etc/camera/mot_imx362_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/mot_s5k2l7_chromatix.xml:system/etc/camera/mot_s5k2l7_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/mot_s5k2l7sa_chromatix.xml:system/etc/camera/mot_s5k2l7sa_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/vfwconfig.json:system/etc/camera/vfwconfig.json

# Sensors
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sensors/hals.conf:system/etc/sensors/hals.conf \
    $(LOCAL_PATH)/configs/sensors/sensor_def_qcomdev.conf:system/etc/sensors/sensor_def_qcomdev.conf

PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl \
    libsensorhub \
    motosh \
    sensorhub.msm8953 \
    sensors.msm8953 \
    sensors.rp \
    sensors.tof \
    sensors.tof.vl53l0

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal-engine-potter.conf:system/vendor/etc/thermal-engine.conf

# ZAF
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/zaf/zaf_mot_imx362.json:system/etc/zaf/zaf_mot_imx362.json \
    $(LOCAL_PATH)/configs/zaf/zaf_mot_s5k2l7.json:system/etc/zaf/zaf_mot_s5k2l7.json

# Rootdir
PRODUCT_PACKAGES += \
    init.mmi_device.rc \
    init.qcom_device.rc

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/mixer_paths.xml:system/vendor/etc/mixer_paths.xml

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/vendor/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media_codecs_performance.xml:system/vendor/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/vendor/etc/media_profiles_vendor.xml \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml

# Inherit from motorola msm8953-common
$(call inherit-product, device/motorola/msm8953-common/common.mk)