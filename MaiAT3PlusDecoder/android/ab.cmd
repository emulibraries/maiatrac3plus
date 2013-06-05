SET NDK=C:\AndroidNDK
SET NDK_MODULE_PATH=..
%NDK%/ndk-build TARGET_PLATFORM=android-9 -j9 %1
