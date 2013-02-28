# audio
include frameworks/base/data/sounds/NewAudio.mk

# bluetooth
PRODUCT_COPY_FILES += \
    system/bluetooth/data/main.conf:system/etc/bluetooth/main.conf


# packages
PRODUCT_PACKAGES += \
  Mms \
  Stk

