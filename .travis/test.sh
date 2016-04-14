#!/bin/sh

name=TravisTest
status=0
echo [0Ktravis_fold:start:#uno
uno build TravisTest.unoproj -v
exitcode=$?
echo [0Ktravis_fold:end:#uno
if [ $exitcode -ne 0 ]; then
	echo "uno $name - FAIL"
	status=$exitcode
else
	echo "uno $name - PASS"
fi
echo [0Ktravis_fold:start:#ios
#uno build -tiOS TravisTest.unoproj -v
#exitcode=$?
echo [0Ktravis_fold:end:#ios
echo [0Ktravis_fold:start:#android
uno build -tAndroid TravisTest.unoproj -v
exitcode=$?
echo [0Ktravis_fold:end:#android
if [ $exitcode -ne 0 ]; then
	echo "uno android $name - FAIL"
	status=$exitcode
else
	echo "uno android $name - PASS"
fi
exit $status
