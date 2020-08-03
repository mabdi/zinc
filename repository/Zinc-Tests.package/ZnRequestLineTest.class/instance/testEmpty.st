tests
testEmpty
	| aZnRequestLine |
	aZnRequestLine := ZnRequestLine
		empty.
	self assert: aZnRequestLine class equals: ZnRequestLine