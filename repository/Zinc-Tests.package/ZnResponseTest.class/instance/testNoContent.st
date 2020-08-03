testing
testNoContent
	| aZnResponse |
	aZnResponse := ZnResponse noContent.
	self assert: aZnResponse class equals: ZnResponse.
	self assert: aZnResponse isNoContent.
	self assert: aZnResponse code equals: 204.
	self deny: aZnResponse isError.
	self assert: aZnResponse isSuccess.
	