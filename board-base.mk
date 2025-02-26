TARGET_SYSTEM_PROP := device/phh/treble/system.prop $(TARGET_SYSTEM_PROP)

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/phh/treble/bluetooth/include

TARGET_EXFAT_DRIVER := exfat
DEVICE_FRAMEWORK_MANIFEST_FILE := device/phh/treble/framework_manifest.xml

BOARD_ROOT_EXTRA_FOLDERS += bt_firmware sec_storage efs persist
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true

# missing something 
ALLOW_MISSING_DEPENDENCIES=true

# Missing Required Module
BUILD_BROKEN_MISSING_REQUIRED_MODULES := true 
ALLOW_MISSING_DEPENDENCIES := true 
ALLOW_MISSING_DEPENDENCIES=true

# Properties
#TARGET_SYSTEM_PROP += $(DEVICE_PATH)/configs/props/Phoneinfo.prop

# Fix prebuilt build.
#$(shell mkdir -p $(OUT_DIR)/target/product/mi439/obj/KERNEL_OBJ/usr)

# Sepolicy
SELINUX_IGNORE_NEVERALLOWS := true
#BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive

BUILD_BROKEN_DUP_RULES := true
#BOARD_EXT4_SHARE_DUP_BLOCKS := true
TARGET_NO_KERNEL_OVERRIDE := true

BOARD_ROOT_EXTRA_SYMLINKS := $(filter-out $(BOARD_ROOT_EXTRA_SYMLINKS),/mnt/vendor/persist:/persist)
