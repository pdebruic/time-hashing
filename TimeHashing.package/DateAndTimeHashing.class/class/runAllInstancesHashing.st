collision-testing
runAllInstancesHashing
	| hD |
	hD := self new
		arrayToTest: DateAndTime allInstances asSet;
		runHashing.
	Transcript
		cr;
		show: hD collisionRate.
	^ hD