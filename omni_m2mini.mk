## Specify phone tech before including full_phone
 
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/omni/config/common.mk)
 
include $(call all-subdir-makefiles)
 
# Charger
PRODUCT_PACKAGES += charger charger_res_images
 
# Release name
PRODUCT_RELEASE_NAME := M2 Mini
 
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720
 
## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := m2mini
PRODUCT_NAME :=  omni_m2mini
PRODUCT_BRAND := MEIZU
PRODUCT_MODEL := M2 Mini
PRODUCT_MANUFACTURER := M2 Mini
