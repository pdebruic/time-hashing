as yet unclassified
runHashing
	hashDictionary := Dictionary new.
	self arrayToTest
		do: [ :eachTime | (hashDictionary at: (self hashOf: eachTime) ifAbsentPut: [ OrderedCollection new ]) add: eachTime ]