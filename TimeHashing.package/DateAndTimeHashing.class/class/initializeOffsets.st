datasets
initializeOffsets
	| initialOffset hrs |
	hrs := 0 to: 1560 by: 30.
	initialOffset := Duration hours: -12.
	offsets := OrderedCollection new.
	hrs do: [ :eachHalfHour | self offsets add: initialOffset + eachHalfHour minutes ].
	self offsets add: (Duration minutes: 345).	"nepal"
	self offsets add: (Duration minutes: 765)	"chatham islands"