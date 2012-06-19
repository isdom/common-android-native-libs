LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := freeslw
LOCAL_C_INCLUDES := $(LOCAL_PATH)/Source/al/include $(LOCAL_PATH)/Source/al/OpenAL32/Include
LOCAL_SRC_FILES := \
		Source/FreeSLW.cpp \
		Source/Functions.cpp \
		Source/mmgr.cpp \
		Source/OggCallback.cpp \
		Source/OpenALBuffer.cpp \
		Source/OpenALGlobals.cpp \
		Source/OpenALInterface.cpp \
		Source/OpenALListener.cpp \
		Source/OpenALSource.cpp \
		Source/OpenALStaticSound.cpp \
		Source/OpenALStream.cpp \
		Source/OpenALStreamOgg.cpp \
		Source/OpenALStreamSound.cpp \
		Source/ZipFile.cpp \
		\
		Source/al/OpenAL32/alAuxEffectSlot.c \
		Source/al/OpenAL32/alBuffer.c \
		Source/al/OpenAL32/alDatabuffer.c \
		Source/al/OpenAL32/alEffect.c \
		Source/al/OpenAL32/alError.c \
		Source/al/OpenAL32/alExtension.c \
		Source/al/OpenAL32/alFilter.c \
		Source/al/OpenAL32/alListener.c \
		Source/al/OpenAL32/alSource.c \
		Source/al/OpenAL32/alState.c \
		Source/al/OpenAL32/alThunk.c \
		\
		Source/al/Alc/ALc.c \
		Source/al/Alc/alcConfig.c \
		Source/al/Alc/alcEcho.c \
		Source/al/Alc/alcModulator.c \
		Source/al/Alc/alcReverb.c \
		Source/al/Alc/alcRing.c \
		Source/al/Alc/alcThread.c \
		Source/al/Alc/ALu.c \
		Source/al/Alc/bs2b.c \
		Source/al/Alc/null.c \
		Source/al/Alc/oss.c \
		Source/al/Alc/android.c \
		\
		Source/vorbis/analysis.c \
		Source/vorbis/barkmel.c \
		Source/vorbis/bitrate.c \
		Source/vorbis/bitwise.c \
		Source/vorbis/block.c \
		Source/vorbis/codebook.c \
		Source/vorbis/envelope.c \
		Source/vorbis/floor0.c \
		Source/vorbis/floor1.c \
		Source/vorbis/framing.c \
		Source/vorbis/info.c \
		Source/vorbis/lookup.c \
		Source/vorbis/lpc.c \
		Source/vorbis/lsp.c \
		Source/vorbis/mapping0.c \
		Source/vorbis/mdct.c \
		Source/vorbis/psy.c \
		Source/vorbis/registry.c \
		Source/vorbis/res0.c \
		Source/vorbis/sharedbook.c \
		Source/vorbis/smallft.c \
		Source/vorbis/synthesis.c \
		Source/vorbis/tone.c \
		Source/vorbis/vorbisenc.c \
		Source/vorbis/vorbisfile.c \
		Source/vorbis/window.c \
		\
		Source/zlib/ioapi.c \
		Source/zlib/unzip.c \
		Source/zlib/zip.c \
		Source/al/alut/alutBufferData.c \
		Source/al/alut/alutCodec.c \
		Source/al/alut/alutError.c \
		Source/al/alut/alutInit.c \
		Source/al/alut/alutInputStream.c \
		Source/al/alut/alutLoader.c \
		Source/al/alut/alutOutputStream.c \
		Source/al/alut/alutUtil.c \
		Source/al/alut/alutVersion.c \
		Source/al/alut/alutWaveform.c 
		

LOCAL_LDLIBS    := -lm
LOCAL_ARM_MODE  := arm
LOCAL_CFLAGS := $(LOCAL_C_INCLUDES:%=-I%) -O2 -Wall -D__ANDROID__ -DFIXED_POINT -D_ARM_ASSEM_ -D__ANDROID__ -DMPG123_NO_CONFIGURE -DOPT_GENERIC -DHAVE_STRERROR -DMPG123_NO_LARGENAME
LOCAL_CPPFLAGS := $(LOCAL_C_INCLUDES:%=-I%) -O2 -Wall -D__ANDROID__ -DFIXED_POINT -D_ARM_ASSEM_ -D__ANDROID__ -DMPG123_NO_CONFIGURE -DOPT_GENERIC -DHAVE_STRERROR -DMPG123_NO_LARGENAME
include $(BUILD_STATIC_LIBRARY)
