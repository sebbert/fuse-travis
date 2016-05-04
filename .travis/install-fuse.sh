#!/bin/sh

# https://docs.travis-ci.com/user/multi-os/
# https://docs.travis-ci.com/user/osx-ci-environment/

# http://apple.stackexchange.com/questions/72226/installing-pkg-with-terminal

if [[ $TRAVIS_OS_NAME == 'osx' ]]; then
	# In /Users/travis/build/bolav/fuse-travis
	ls -l /Applications/Fuse.app/Contents/Uno/uno.exe
	mkdir fuse
	wget https://api.fusetools.com/fuse-release-management/releases/0.12.3.6348/osx
	mv osx fuse/fuse_osx_0_12_3_6348.pkg
	sudo installer -pkg fuse/fuse_osx_0_12_3_6348.pkg -target /
	sudo chown -R travis $HOME/.fuse
	echo "Installed Fuse"
	# fuse install android < ./.travis/sdkinstall.txt
fi
