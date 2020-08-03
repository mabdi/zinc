tests
testHost
	| request |
	request := ZnRequest new.
	self assert: request host isNil