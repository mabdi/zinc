testing
testNotModified
	| aZnResponse |
	aZnResponse := ZnResponse notModified.
	self assert: aZnResponse class equals: ZnResponse.
	self assert: aZnResponse code equals: 304.
	self deny: aZnResponse isError.
	self assert: aZnResponse isNotModified.
	self deny: aZnResponse isSuccess.