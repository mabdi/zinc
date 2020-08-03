tests
testHostNil
	| request |
	request := ZnRequest new.
	self assert: request host isNil