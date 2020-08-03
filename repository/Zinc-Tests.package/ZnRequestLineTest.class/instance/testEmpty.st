tests
testEmpty
	| aZnRequestLine |
	aZnRequestLine := ZnRequestLine empty.
	self assert: aZnRequestLine class equals: ZnRequestLine.
	self assert: aZnRequestLine version equals: 'HTTP/1.1'.
	self assert: aZnRequestLine isHttp11.
	self assert: aZnRequestLine method isNil.
	self deny: aZnRequestLine isHttp10.
	self assert: aZnRequestLine uri isNil 