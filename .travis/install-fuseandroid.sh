#!/bin/sh

# https://docs.travis-ci.com/user/multi-os/
# https://docs.travis-ci.com/user/osx-ci-environment/

# http://apple.stackexchange.com/questions/72226/installing-pkg-with-terminal

if [[ $TRAVIS_OS_NAME == 'osx' ]]; then
	# In /Users/travis/build/bolav/fuse-travis
	echo "Installing Fuse Android"
	fuse install android < ./.travis/sdkinstall.txt
	cat ~/.fuse/sdkConfig.json
	ls -l "/Users/travis/Library/Application Support/Fusetools/Fuse"
	ls -l "/Users/travis/Library/Application Support/Fusetools/Fuse/Android/AndroidSDK"
	ls -l "/Users/travis/Library/Application Support/Fusetools/Fuse/Android/Ant"
fi
