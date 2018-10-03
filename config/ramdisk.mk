# device rootdir
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/rootdir/fstab.goldfish:root/fstab.goldfish \
    $(DEVICE_PATH)/rootdir/fstab.ranchu:root/fstab.ranchu \
    $(DEVICE_PATH)/rootdir/init.goldfish.rc:root/init.goldfish.rc \
    $(DEVICE_PATH)/rootdir/init.ranchu.rc:root/init.ranchu.rc \
    $(DEVICE_PATH)/rootdir/ueventd.goldfish.rc:root/ueventd.goldfish.rc \
    $(DEVICE_PATH)/rootdir/ueventd.ranchu.rc:root/ueventd.ranchu.rc

#TWRP
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/twrp.fstab:recovery/root/etc/twrp.fstab
