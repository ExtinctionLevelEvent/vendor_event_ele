#
# KILLRom Audio Files
#

ALARM_PATH := vendor/event/ele/prebuilt/system/media/audio/alarms
NOTIFICATION_PATH := vendor/event/ele/prebuilt/system/media/audio/notifications
RINGTONE_PATH := vendor/event/ele/prebuilt/system/media/audio/ringtones
UI_PATH := vendor/event/ele/prebuilt/system/media/audio/ui



# Ringtones
PRODUCT_COPY_FILES += \
	$(RINGTONE_PATH)/BeforeIForget.mp3:system/media/audio/ringtones/BeforeIForget.mp3 \
	$(RINGTONE_PATH)/Blind.mp3:system/media/audio/ringtones/Blind.mp3 \
	$(RINGTONE_PATH)/DeadBodiesEverywhere.mp3:system/media/audio/ringtones/DeadBodiesEverywhere.mp3 \
	$(RINGTONE_PATH)/Skip.mp3:system/media/audio/ringtones/Skip.mp3

