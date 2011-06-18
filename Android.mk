LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

PRIVATE_PACKAGE_VERSION := "0.8.15-svn"
PRIVATE_PACKAGE_STRING  := "irssi ${PRIVATE_PACKAGE_VERSION}"

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
src/core/write-buffer.c \
src/irc/core/bans.c \
src/irc/core/channel-events.c \
src/irc/core/channel-rejoin.c \
src/irc/core/channels-query.c \
src/irc/core/ctcp.c \
src/irc/core/irc.c \
src/irc/core/irc-channels.c \
src/irc/core/irc-channels-setup.c \
src/irc/core/irc-chatnets.c \
src/irc/core/irc-commands.c \
src/irc/core/irc-core.c \
src/irc/core/irc-expandos.c \
src/irc/core/irc-masks.c \
src/irc/core/irc-nicklist.c \
src/irc/core/irc-queries.c \
src/irc/core/irc-servers.c \
src/irc/core/irc-servers-reconnect.c \
src/irc/core/irc-servers-setup.c \
src/irc/core/irc-session.c \
src/irc/core/lag.c \
src/irc/core/massjoin.c \
src/irc/core/mode-lists.c \
src/irc/core/modes.c \
src/irc/core/netsplit.c \
src/irc/core/servers-idle.c \
src/irc/core/servers-redirect.c \
src/lib-config/get.c \
src/lib-config/parse.c \
src/lib-config/set.c \
src/lib-config/write.c \
src/fe-common/core/module-formats.c \
src/fe-common/core/printtext.c \
src/fe-common/core/themes.c \
src/fe-common/core/utf8.c \
src/fe-common/core/wcwidth.c \
src/fe-common/core/window-activity.c \
src/fe-common/core/window-commands.c \
src/fe-common/core/window-items.c \
src/fe-common/core/windows-layout.c \
src/fe-common/core/chat-completion.c \
src/fe-common/core/command-history.c \
src/fe-common/core/completion.c \
src/fe-common/core/fe-channels.c \
src/fe-common/core/fe-common-core.c \
src/fe-common/core/fe-core-commands.c \
src/fe-common/core/fe-exec.c \
src/fe-common/core/fe-expandos.c \
src/fe-common/core/fe-help.c \
src/fe-common/core/fe-ignore.c \
src/fe-common/core/fe-ignore-messages.c \
src/fe-common/core/fe-log.c \
src/fe-common/core/fe-messages.c \
src/fe-common/core/fe-modules.c \
src/fe-common/core/fe-queries.c \
src/fe-common/core/fe-recode.c \
src/fe-common/core/fe-server.c \
src/fe-common/core/fe-settings.c \
src/fe-common/core/fe-windows.c \
src/fe-common/core/formats.c \
src/fe-common/core/hilight-text.c \
src/fe-common/irc/module-formats.c \
src/fe-common/irc/fe-common-irc.c \
src/fe-common/irc/fe-ctcp.c \
src/fe-common/irc/fe-events.c \
src/fe-common/irc/fe-events-numeric.c \
src/fe-common/irc/fe-irc-channels.c \
src/fe-common/irc/fe-irc-commands.c \
src/fe-common/irc/fe-irc-messages.c \
src/fe-common/irc/fe-ircnet.c \
src/fe-common/irc/fe-irc-queries.c \
src/fe-common/irc/fe-irc-server.c \
src/fe-common/irc/fe-modes.c \
src/fe-common/irc/fe-netjoin.c \
src/fe-common/irc/fe-netsplit.c \
src/fe-common/irc/fe-whois.c \
src/fe-common/irc/irc-completion.c \
src/fe-text/tparm.c \
src/fe-text/gui-entry.c \
src/fe-text/gui-expandos.c \
src/fe-text/gui-printtext.c \
src/fe-text/gui-readline.c \
src/fe-text/gui-windows.c \
src/fe-text/irssi.c \
src/fe-text/lastlog.c \
src/fe-text/mainwindow-activity.c \
src/fe-text/mainwindows.c \
src/fe-text/mainwindows-layout.c \
src/fe-text/module-formats.c \
src/fe-text/statusbar.c \
src/fe-text/statusbar-config.c \
src/fe-text/statusbar-items.c \
src/fe-text/term.c \
src/fe-text/term-dummy.c \
src/fe-text/terminfo-core.c \
src/fe-text/term-terminfo.c \
src/fe-text/textbuffer.c \
src/fe-text/textbuffer-commands.c \
src/fe-text/textbuffer-view.c 

#src/fe-none/irssi.c

LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := irssi

LOCAL_C_INCLUDES += $(LOCAL_PATH)/src/lib-config
LOCAL_C_INCLUDES += $(LOCAL_PATH)/src/glib
LOCAL_C_INCLUDES += $(LOCAL_PATH)/src/glib/glib

LOCAL_C_INCLUDES += $(LOCAL_PATH)/src
LOCAL_C_INCLUDES += $(LOCAL_PATH)/src/core
LOCAL_C_INCLUDES += $(LOCAL_PATH)/src/irc/core
LOCAL_C_INCLUDES += $(LOCAL_PATH)/src/fe-common/core
LOCAL_C_INCLUDES += $(LOCAL_PATH)/src/fe-text

#LOCAL_C_INCLUDES += $(LOCAL_PATH)/src/fe-none

#LOCAL_C_INCLUDES += $(LOCAL_PATH)/../libncurses/include

#LOCAL_CFLAGS += -DHAVE_IPV6
LOCAL_CFLAGS += -DPACKAGE_TARNAME=\"irssi\" -DUOFF_T_INT
LOCAL_CFLAGS += -DSYSCONFDIR=\"/etc\"
LOCAL_CFLAGS += -DTHEMESDIR=\"/data/irssi/themes\"
LOCAL_CFLAGS += -DHELPDIR=\"/data/irssi/help\"
LOCAL_CFLAGS += -DIRSSI_VERSION_DATE=\"${PRIVATE_VERSION_DATE}\"
LOCAL_CFLAGS += -DIRSSI_VERSION_TIME=\"${PRIVATE_VERSION_TIME}\"
LOCAL_CFLAGS += -DPACKAGE_VERSION=\"${PRIVATE_PACKAGE_VERSION}\"
LOCAL_CFLAGS += -DPACKAGE_STRING\"${PRIVATE_PACKAGE_STRING}\"



LOCAL_STATIC_LIBRARIES := libglib_irc_static

LOCAL_SHARED_LIBRARIES := \
	libncurses \
        libutils \
        libcutils \
        libc

REQUIRE_MODULE += libglib_irc_static libncurses

include $(BUILD_EXECUTABLE)

include $(call all-makefiles-under,$(LOCAL_PATH))

