LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

PRIVATE_VERSION_DATE := $(shell date +%y%m%d)
PRIVATE_VERSION_TIME := $(shell date +%H%M)

LOCAL_SRC_FILES:= \
src/core/args.c \
src/core/channels.c \
src/core/channels-setup.c \
src/core/chat-commands.c \
src/core/chatnets.c \
src/core/chat-protocols.c \
src/core/commands.c \
src/core/core.c \
src/core/expandos.c \
src/core/ignore.c \
src/core/levels.c \
src/core/line-split.c \
src/core/log-away.c \
src/core/log.c \
src/core/masks.c \
src/core/misc.c \
src/core/modules.c \
src/core/modules-load.c \
src/core/net-disconnect.c \
src/core/net-nonblock.c \
src/core/net-sendbuffer.c \
src/core/network.c \
src/core/network-openssl.c \
src/core/nicklist.c \
src/core/nickmatch-cache.c \
src/core/pidwait.c \
src/core/queries.c \
src/core/rawlog.c \
src/core/recode.c \
src/core/servers.c \
src/core/servers-reconnect.c \
src/core/servers-setup.c \
src/core/session.c \
src/core/settings.c \
src/core/signals.c \
src/core/special-vars.c \
src/core/write-buffer.c
#	src/fe-text/*.c

LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := irssi

LOCAL_C_INCLUDES += $(LOCAL_PATH)/src
LOCAL_C_INCLUDES += $(LOCAL_PATH)/src/lib-config
LOCAL_C_INCLUDES += $(LOCAL_PATH)/src/glib
LOCAL_C_INCLUDES += $(LOCAL_PATH)/src/glib/glib

#LOCAL_CFLAGS += -DHAVE_IPV6
LOCAL_CFLAGS += -DPACKAGE_TARNAME=\"glib\" -DUOFF_T_INT
LOCAL_CFLAGS += -DIRSSI_VERSION_DATE=\"${PRIVATE_VERSION_DATE}\"
LOCAL_CFLAGS += -DIRSSI_VERSION_TIME=\"${PRIVATE_VERSION_TIME}\"


LOCAL_STATIC_LIBRARIES := libglib

LOCAL_SHARED_LIBRARIES := \
        libutils \
        libcutils \
        libc

REQUIRE_MODULE += libglib_static

include $(BUILD_EXECUTABLE)

