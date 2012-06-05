as yet unclassified
collisions
	^ self hashDictionary values select: [ :each | each size > 1 ]