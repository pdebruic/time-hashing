datasets
refreshDataSets
	self eraseDataSets.
	3 timesRepeat: [ Smalltalk garbageCollect ].
	self
		newRandomDateAndTimeDataSet;
		newSequentialDateAndTimeDataSet