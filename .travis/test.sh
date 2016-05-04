#!/bin/sh

name=TravisTest
status=0
echo travis_fold:start:uno
uno build TravisTest.unoproj -v
exitcode=$?
echo travis_fold:end:uno
if [ $exitcode -ne 0 ]; then
	echo "uno $name - FAIL"
	status=$exitcode
else
	echo "uno $name - PASS"
fi
echo travis_fold:start:ios
uno build -tiOS TravisTest.unoproj -v
exitcode=$?
echo travis_fold:end:ios
if [ $exitcode -ne 0 ]; then
	echo "uno ios $name - FAIL"
	status=$exitcode
else
	echo "uno ios $name - PASS"
fi
echo travis_fold:start:android
uno build -tAndroid TravisTest.unoproj -v
exitcode=$?
echo travis_fold:end:android
if [ $exitcode -ne 0 ]; then
	echo "uno android $name - FAIL"
	status=$exitcode
else
	echo "uno android $name - PASS"
fi
exit $status
