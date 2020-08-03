tests
testDefaultResponseHeaders
	| aZnHeaders |
	aZnHeaders := ZnHeaders defaultResponseHeaders.
	self assert:
		aZnHeaders class equals: ZnHeaders