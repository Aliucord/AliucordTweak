TARGET := iphone:clang:latest:14
ARCHS := arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = AliucordTweak

AliucordTweak_FILES = \
	$(shell find Sources/Aliucord -name '*.swift') \
	$(shell find Sources/AliucordC -name '*.m' -o -name '*.c' -o -name '*.mm' -o -name '*.cpp')
AliucordTweak_SWIFTFLAGS = -ISources/AliucordC/include
AliucordTweak_CFLAGS = -fobjc-arc -ISources/AliucordC/include

include $(THEOS_MAKE_PATH)/tweak.mk
