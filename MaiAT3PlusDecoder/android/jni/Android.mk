LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := at3plusdecoder
LOCAL_CFLAGS := -O3 -fsigned-char -ffast-math -Wall -Wno-multichar -Wno-psabi -I../include
LOCAL_CPPFLAGS := -std=gnu++11 -frtti

BASE := ../..

LOCAL_SRC_FILES := \
		$(BASE)/src/MaiAT3PlusCoreDecoder.cpp.arm \
		$(BASE)/src/MaiAT3PlusCoreDecoder_DecFunc.cpp.arm \
		$(BASE)/src/MaiAT3PlusCoreDecoder_StaticData.cpp.arm \
		$(BASE)/src/MaiAT3PlusCoreDecoder_SubFunc.cpp.arm \
		$(BASE)/src/MaiAT3PlusFrameDecoder.cpp.arm \
		$(BASE)/src/base/Heap_Alloc0.cc \
		$(BASE)/src/base/Mai_mem.cc \
		$(BASE)/src/base/Mai_Sleep.cc \
		$(BASE)/src/base/MaiBitReader.cc \
		$(BASE)/src/base/MaiBufIO.cc \
		$(BASE)/src/base/MaiCriticalSection.cc \
		$(BASE)/src/base/MaiFile.cc \
		$(BASE)/src/base/MaiQueue0.cc \
		$(BASE)/src/base/MaiString.cc \
		$(BASE)/src/base/MaiThread.cc \
		$(BASE)/src/base/Unicode.cc \
		$(BASE)/maiatrac3plus.cpp

LOCAL_LDLIBS := -llog
		
include $(BUILD_SHARED_LIBRARY)
