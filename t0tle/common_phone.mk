# audio
include frameworks/base/data/sounds/NewAudio.mk

# common
$(call inherit-product, vendor/event/ele/t0lte/common.mk)

# bluetooth
PRODUCT_COPY_FILES += \
    system/bluetooth/data/main.conf:system/etc/bluetooth/main.conf


