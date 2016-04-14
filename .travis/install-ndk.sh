#!/bin/sh

if [[ $TRAVIS_OS_NAME == 'osx' ]]; then
	echo $NDK_VERSION
	wget http://dl.google.com/android/repository/android-ndk-r11c-darwin-x86_64.zip
	unzip android-ndk-r11c-darwin-x86_64.zip | grep -v inflating: | grep -v creating: | grep -v extracting:
	rm android-ndk-r11c-darwin-x86_64.zip
	export ANDROID_NDK=${PWD}/android-ndk-r11c
	export ANDROID_NDK_HOME=${PWD}/android-ndk-r11c
	export PATH=${PATH}:${ANDROID_NDK_HOME}
fi
