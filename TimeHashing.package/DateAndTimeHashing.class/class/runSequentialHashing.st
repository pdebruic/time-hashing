collision-testing
runSequentialHashing
	| hD |
	hD := self new
		arrayToTest: SequentialDataSet;
		runHashing.
	Transcript
		cr;
		show: hD collisionRate.
	^ hD