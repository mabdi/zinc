as yet unclassified
testReadThenWrite_amp_L14
	<madeBySmallAmp>
	| stream stringStream |
	(SystemVersion current major < 7
		or: [ SystemVersion current build < 690 ])
		ifTrue: [ self skip ].
	stringStream := ReadWriteStream with: ''.
	stringStream reset.
	stream := ZnBufferedReadWriteStream on: stringStream.
	stream
		sizeBuffer: 8;
		next: 4;
		nextPutAll: 'ABCD'