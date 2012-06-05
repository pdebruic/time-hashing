as yet unclassified
noLargePositiveIntegerHashes
	^ self hashDictionary keys allSatisfy: [ :each | each isLarge not ]