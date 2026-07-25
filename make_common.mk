CC := g++

# Pin the language standard explicitly: code relies on C++17 features
# (std::clamp, inline variables) that some compilers only enable by default
# at C++17+, while others default lower and silently reject them.
CFLAGS += -std=c++17

PKG_CONFIG := pkg-config

MAKEFILE_DIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

#BUILDROOT_ZERO2W64_DIR=$(MAKEFILE_DIR)/../zicOs/zero2w64/output
BUILDROOT_ZERO2W64_DIR=$(MAKEFILE_DIR)/os/zero2w64/output
CC_ZERO2W64 := $(BUILDROOT_ZERO2W64_DIR)/host/bin/aarch64-linux-g++

ifeq ($(cc),arm64)
	RPI := -DIS_RPI=1
    CC := $(CC_ZERO2W64)
 	TARGET_PLATFORM := arm64
	SYSROOT := $(BUILDROOT_ZERO2W64_DIR)/staging

	CFLAGS += --sysroot=$(SYSROOT) -I$(SYSROOT)/usr/include
	LDFLAGS += --sysroot=$(SYSROOT) -L$(SYSROOT)/usr/lib -L$(SYSROOT)/lib

	PKG_CONFIG := PKG_CONFIG_SYSROOT_DIR=$(SYSROOT) PKG_CONFIG_PATH=$(SYSROOT)/usr/lib/pkgconfig pkg-config
endif

# if TARGET_PLATFORM is not set and uname -m is x86_64, then we are on x86
# else we are on arm, let's use generic folder `arm` if nothing specified.
# macOS is always treated as the desktop (x86) target regardless of arch,
# since there is no macOS hardware target to cross-compile for.
ifeq ($(TARGET_PLATFORM),)
	ifeq ($(shell uname -s),Darwin)
		TARGET_PLATFORM := x86
	else ifeq ($(shell uname -m),x86_64)
		TARGET_PLATFORM := x86
	else
		TARGET_PLATFORM := arm
		RPI := -DIS_RPI=1
	endif
endif

# macOS desktop build: resolve Homebrew paths for SFML 2 (the code uses the
# SFML 2 event API; Homebrew's default `sfml` formula is SFML 3 and incompatible)
# and the CoreAudio frameworks needed by the miniaudio backend.
ifeq ($(shell uname -s),Darwin)
	SFML2_PREFIX := $(shell brew --prefix sfml@2 2>/dev/null)
	CFLAGS += -I$(SFML2_PREFIX)/include
	LDFLAGS += -L$(SFML2_PREFIX)/lib
	FRAMEWORKS := -framework CoreAudio -framework CoreFoundation -framework AudioToolbox -framework AudioUnit
endif
