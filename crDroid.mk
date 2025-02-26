$(call inherit-product, vendor/infinity/config/common.mk)
$(call inherit-product, vendor/infinity/config/common_full.mk)
$(call inherit-product, vendor/infinity/config/BoardConfigSoong.mk)
$(call inherit-product, vendor/infinity/config/BoardConfiginfinity.mk)
$(call inherit-product, device/infinity/sepolicy/common/sepolicy.mk)
-include vendor/lineage/build/core/config.mk
TARGET_NO_KERNEL_OVERRIDE := true
TARGET_NO_KERNEL_IMAGE := true
SELINUX_IGNORE_NEVERALLOWS := true

TARGET_FACE_UNLOCK_SUPPORTED := true

# PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
#    ro.system.ota.json_url=https://raw.githubusercontent.com/naz664/crDroid_gsi/14/ota.json

# Set Bootanimation at 720P
TARGET_BOOT_ANIMATION_RES := 720

# APN
PRODUCT_PACKAGES += apns-conf.xml

# Extra Stuffs
INFINITY_MAINTAINER := FARHAN•AFK
TARGET_BUILD_VIMUSIC := true
USE_MOTO_CALCULATOR := true
WITH_GMS := ture 
# Boot animation resolution.
TARGET_BOOT_ANIMATION_RES := 720
