#!/bin/sh

name=TravisTest
echo travis_fold:start:#uno
uno build TravisTest.unoproj -v
exitcode=$?
echo travis_fold:end:#uno
if [ $exitcode -ne 0 ]; then
	echo "uno $name - FAIL"
else
	echo "uno $name - PASS"
fi
echo travis_fold:start:#ios
#uno build -tiOS TravisTest.unoproj -v
#exitcode=$?
#if [ $exitcode -ne 0 ]; then
#	echo Failed iOS $name : $exitcode
#	exit $exitcode
#fi
echo travis_fold:end:#ios
echo travis_fold:start:#android
uno build -tAndroid TravisTest.unoproj -v
exitcode=$?
echo travis_fold:end:#android
if [ $exitcode -ne 0 ]; then
	echo "uno android $name - FAIL"
else
	echo "uno android $name - PASS"
fi
