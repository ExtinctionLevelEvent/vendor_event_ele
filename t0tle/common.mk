# brand
PRODUCT_BRAND ?= ele_t0lte


# overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/event/t0lte/overlay/dictionaries

PRODUCT_PACKAGES += \
  Stk

# sip/voip
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

