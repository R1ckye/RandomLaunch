include theos/makefiles/common.mk

TWEAK_NAME = RandomLaunch
RandomLaunch_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += randomlaunchtoggle
include $(THEOS_MAKE_PATH)/aggregate.mk
