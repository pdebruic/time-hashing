as yet unclassified
runBenchmark
	Smalltalk garbageCollect.
	TimeProfileBrowser spyOn: [ self arrayToTest do: [ :eachTime | self hashOf: eachTime ] ]