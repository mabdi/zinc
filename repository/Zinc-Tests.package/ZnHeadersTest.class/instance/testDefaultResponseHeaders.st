testing
testDefaultResponseHeaders
	| aZnHeaders |
	aZnHeaders := ZnHeaders defaultResponseHeaders.
	self assert: aZnHeaders class equals: ZnHeaders.
	self deny: aZnHeaders isDescribingEntity.
	self deny: aZnHeaders isEmpty.
	self deny: aZnHeaders hasContentLength.
	self deny: aZnHeaders hasContentType