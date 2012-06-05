benchmarking
benchmarkAllInstancesHashing
	self new
		arrayToTest: DateAndTime allInstances asSet;
		runBenchmark