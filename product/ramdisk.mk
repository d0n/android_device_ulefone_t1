# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/fstab.goldfish:root/fstab.goldfish \
    $(LOCAL_PATH)/rootdir/fstab.mt6757:root/fstab.mt6757 \
    $(LOCAL_PATH)/rootdir/fstab.ranchu:root/fstab.ranchu \
    $(LOCAL_PATH)/rootdir/init.rc:root/init.rc \
    $(LOCAL_PATH)/rootdir/init.recovery.usb.rc:root/init.recovery.usb.rc \
    $(LOCAL_PATH)/rootdir/meta_init.modem.rc:root/meta_init.modem.rc \
    $(LOCAL_PATH)/rootdir/meta_init.project.rc:root/meta_init.project.rc \
    $(LOCAL_PATH)/rootdir/meta_init.rc:root/meta_init.rc \
    $(LOCAL_PATH)/rootdir/recovery.fstab:root/recovery.fstab \
    $(LOCAL_PATH)/rootdir/ueventd.goldfish.rc:root/ueventd.goldfish.rc \
    $(LOCAL_PATH)/rootdir/ueventd.mt6757.rc:root/ueventd.mt6757.rc \
    $(LOCAL_PATH)/rootdir/ueventd.ranchu.rc:root/ueventd.ranchu.rc \
    $(LOCAL_PATH)/rootdir/ueventd.rc:root/ueventd.rc \
    $(LOCAL_PATH)/rootdir/init/mediaserver.rc:system/etc/init/mediaserver.rc
