#!/bin/sh

# https://docs.travis-ci.com/user/multi-os/
# https://docs.travis-ci.com/user/osx-ci-environment/

if [[ $TRAVIS_OS_NAME == 'osx' ]]; then
	ls -l /Applications
	ls -l /Applications/Fuse.app
	ls -l fuse
	mkdir fuse
	wget https://api.fusetools.com/fuse-release-management/releases/0.11.1.6272/osx
	mv osx fuse/fuse_osx_0_11_1_6262.pkg
	sudo installer -pkg fuse/fuse_osx_0_11_1_6262.pkg -target /
	echo "Installed Fuse"
	ls -l /Applications
	ls -l /Applications/Fuse.app
	ls -l fuse
fi
