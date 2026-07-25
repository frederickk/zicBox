MAKE := make cc=$(cc)

include ../make_common.mk

ifeq ($(TARGET_PLATFORM),x86)
SMFL=-lsfml-graphics -lsfml-window -lsfml-system -DDRAW_SMFL -DDRAW_DESKTOP
endif

INC=-I.. -I.

BUILD_DIR := build/$(TARGET_PLATFORM)
# no ALSA on macOS; audio goes through miniaudio (see zic.cpp) instead
ifeq ($(shell uname -s),Darwin)
# built as its own translation unit; see audioBackendMiniaudioImpl.cpp for why
SRCS := zic.cpp audioBackendMiniaudioImpl.cpp
else
ALSA=`$(PKG_CONFIG) --cflags --libs alsa`
SRCS := zic.cpp
endif
SNDFILE=`$(PKG_CONFIG) --cflags --libs sndfile`

all: build_zic run

build_zic:
	@mkdir -p $(BUILD_DIR)
	$(CC) -O3 -g -fms-extensions -o $(BUILD_DIR)/zic $(SRCS) -fpermissive $(INC) $(ALSA) $(RPI) $(CFLAGS) $(LDFLAGS) $(SMFL) $(SNDFILE) $(FRAMEWORKS)

run:
	$(BUILD_DIR)/zic

screenshot:
	ZIC_SCREENSHOT="../wiki/zicDrop/screenshot" $(BUILD_DIR)/zic

clean:
	rm -rf build
