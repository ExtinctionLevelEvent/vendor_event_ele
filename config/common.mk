PRODUCT_BRAND ?= E.L.E

# extinction level event
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.tags=release-keys \
    windowsmgr.max_events_per_sec=512 \
    ro.kernel.android.checkjni=0 \
    ro.media.enc.jpeg.quality=100 \
    ro.config.nocheckin=1 \
    debug.performance.tuning=1 \
    persist.service.swiqi.enable=1 \
    video.accelerate.hw=1 \
    ro.ril.enable.3g.prefix=1 \
    ro.ril.hep=1 \
    ro.ril.hsxpa=3 \
    ro.ril.enable.dtm=1 \
    ro.ril.gprsclass=12 \
    ro.ril.hsdpa.category=28 \
    ro.ril.enable.a53=1 \
    ro.ril.enable.3g.prefix=1 \
    ro.ril.hsupa.category=7 \
    persist.sys.purgeable_assets=1 \
    pm.sleep_mode=1 \
    ro.home_app_adj=1 \
    ro.ext4fs=1 \
    dalvik.vm.heapstartsize=128m \
    dalvik.vm.heapgrowthlimit=320m \
    dalvik.vm.heapsize=512m \
    dalvik.vm.heapminfree=512k \
    dalvik.vm.heapmaxfree=16m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapidealfree=8388608 \
    dalvik.vm.heapconcurrentstart=2097152
    persist.sys.use_dithering=0 \
    ro.ril.disable.power.collapse=0 \
    dalvik.vm.execution-mode=int:jit \
    dalvik.vm.verify-bytecode=false \
    dalvik.vm.dexopt-flags=m=y,v=n,o=v \
    ro.dalvik.vm.checkjni=0 \
    ro.max.fling_velocity=15000 \
    ro.min.fling_velocity=8000 \
    ro.config.hw_fast_dormancy=1 \
    net.dns1=8.8.4.4 \
    net.dns2=8.8.8.8 \
    net.ppp0.dns1=8.8.8.8 \
    net.ppp0.dns2=8.8.4.4

# Bring in all audio files
include frameworks/base/data/sounds/NewAudio.mk

# Extra Ringtones
include frameworks/base/data/sounds/AudioPackageNewWave.mk

# Include ELE audio files
include vendor/event/ele/config/ele_audio.mk

# Bring in all video files
$(call inherit-product, frameworks/base/data/videos/VideoPackage2.mk)

PRODUCT_PACKAGE_OVERLAYS += \
vendor/event/ele/overlay/common

# T-Mobile theme engine
include vendor/event/ele/config/themes_common.mk

# init.d support
PRODUCT_COPY_FILES += \
    vendor/event/ele/prebuilt/system/etc/init.d/01ele:system/etc/init.d/01ele \
    vendor/event/ele/prebuilt/system/etc/init.d/91elezipalign:system/etc/init.d/91elezialign \
    vendor/event/ele/prebuilt/system/etc/init.d/02elekernel:system/etc/init.d/02elekernel \
    vendor/event/ele/prebuilt/system/etc/init.d/05elefs:system/etc/init.d/05elefs \
    vendor/event/ele/prebuilt/system/etc/init.d/99elesystem:system/etc/init.d/99elesystem

ifneq ($(TARGET_PRODUCT),full_grouper)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Blind.mp3 \
    ro.config.notification_sound=Xenon.ogg \
    ro.config.alarm_alert=Nobelium.ogg
endif

# sysinit and sysctl support
PRODUCT_COPY_FILES += \
    vendor/event/ele/prebuilt/system/bin/sysinit:system/bin/sysinit \
    vendor/event/ele/prebuilt/system/etc/sysctl.conf:system/etc/sysctl.conf

# Copy SuperSu
PRODUCT_COPY_FILES += \
    vendor/event/ele/prebuilt/system/app/SuperSU.apk:system/app/SuperSU.apk \
    vendor/event/ele/prebuilt/system/xbin/su:system/xbin/su

#killr extras
PRODUCT_PACKAGES += \
        ELELauncher \
        LockClock \
        SpeedDemon

# extras
PRODUCT_COPY_FILES += \
    vendor/event/ele/prebuilt/system/xbin/zipalign:system/xbin/zipalign \
    vendor/event/ele/prebuilt/system/xbin/sqlite3:system/xbin/sqlite3

# Bootanimation murdr
ifneq ($(TARGET_BOOTANIMATION_NAME),)
PRODUCT_COPY_FILES += \
    vendor/event/ele/prebuilt/system/media/$(TARGET_BOOTANIMATION_NAME).zip:system/media/bootanimation.zip
else
PRODUCT_COPY_FILES += \
    vendor/event/ele/prebuilt/system/media/720.zip:system/media/bootanimation.zip
endif
