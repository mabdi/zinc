testing
testAccepted
	| aZnResponse |
	aZnResponse := ZnResponse accepted.
	self assert: aZnResponse class equals: ZnResponse.
	self assert: aZnResponse code equals: 202.
	self assert: aZnResponse contents isNil.
	self deny: aZnResponse isError.
	self assert: aZnResponse isSuccess.