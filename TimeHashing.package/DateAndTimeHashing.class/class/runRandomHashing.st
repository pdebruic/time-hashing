collision-testing
runRandomHashing
	| hD |
	hD := self new
		arrayToTest: RandomDataSet;
		runHashing.
	Transcript
		cr;
		show: hD collisionRate.
	^ hD