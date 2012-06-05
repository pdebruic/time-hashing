datasets
newSequentialDateAndTimeDataSet
	| randomStartTime iterationInterval set |
	SequentialDataSet := OrderedCollection new.
	set := Set new.
	iterationInterval := Interval from: 1 to: self sequentialIterations.
	randomStartTime := self randomDateAndTime.
	self sequentialStepSizes
		do: [ :eachStepSize | 
			iterationInterval
				do: [ :each | 
					| newTime |
					newTime := randomStartTime + (eachStepSize * each).
					(set includes: newTime)
						ifFalse: [ 
							set add: newTime.
							SequentialDataSet add: newTime ] ] ]