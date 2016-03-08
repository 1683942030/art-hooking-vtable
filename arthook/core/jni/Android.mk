# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE    := libartdroid
LOCAL_SRC_FILES := artstuff.c \
                   utils.c \
                   arthook_helper.c \
                   arthook_manager.c \
                   jni_helper.c \
                   arthook_bridge.c \
                   epoll_arm.c.arm \
                   json_parser/json.c \
					config.c \
					main.c
LOCAL_C_INCLUDES := ../../../adbi/instruments/base/
#LOCAL_INCLUDE   := ../../adbi/instruments/base/hook.h
LOCAL_CFLAGS := -std=gnu++11 -fpermissive -DDEBUG -O0
LOCAL_ARM_MODE := thumb
LOCAL_SHARED_LIBRARIES := dl
LOCAL_LDLIBS := -llog 
LOCAL_LDLIBS += -Wl,--start-group ../../../adbi/instruments/base/obj/local/armeabi/libbase.a -Wl,--end-group
#LOCAL_STATIC_LIBRARIES := -Wl,--start-group ../../../adbi/instruments/base/obj/local/armeabi/libbase.a -Wl,--end-group

include $(BUILD_STATIC_LIBRARY)
#include $(BUILD_SHARED_LIBRARY)


