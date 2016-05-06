#!/bin/sh

name=${UNOPROJ}
uno build ${UNOPROJ}.unoproj -v
exitcode=$?
echo travis_fold:end:uno
if [ $exitcode -ne 0 ]; then
	echo "uno $name - FAIL"
	status=$exitcode
else
	echo "uno $name - PASS"
fi
exit $exitcode
