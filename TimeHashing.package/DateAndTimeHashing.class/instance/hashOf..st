as yet unclassified
hashOf: aDateAndTime
	"new: 
	| jdn second offset nano totalSeconds |
	jdn := aDateAndTime julianDayNumber.
	second := aDateAndTime secondsSinceMidnight.
	offset := aDateAndTime offset.
	nano := aDateAndTime nanoSecond.
	totalSeconds := second - offset asSeconds.	
	^ ((totalSeconds // 86400 + jdn) hashMultiply bitXor: totalSeconds \\ 86400) bitXor: nano
	
	old: 
	^ aDateAndTime asUTC ticks hash
	"

	| jdn second offset nano totalSeconds |
	jdn := aDateAndTime julianDayNumber.
	second := aDateAndTime secondsSinceMidnight.
	offset := aDateAndTime offset.
	nano := aDateAndTime nanoSecond.
	totalSeconds := second - offset asSeconds.
	^ ((totalSeconds // 86400 + jdn) hashMultiply bitXor: totalSeconds \\ 86400) bitXor: nano