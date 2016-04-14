if [ "`uname`" == "Darwin" ];
then
	wget https://api.fusetools.com/fuse-release-management/releases/0.11.1.6272/osx
	mv osx fuse_osx_0_11_1_6262.pkg
	sudo installer -pkg ./fuse_osx_0_11_1_6262.pkg -target /
fi