testing
testAbsoluteCreated
	| response uri |
	uri := 'http://www.example.com:8888/something/else/foo.txt'.
	response := ZnResponse created: uri asZnUrl.
	self assert: response code = 201.
	self assert: response hasHeaders.
	self assert: (response headers at: 'Location') = uri.
	self assert: response hasEntity.
	self assert: (response entity contents includesSubstring: uri).
	self deny: response isAuthenticationRequired.
	self deny: response isBadRequest.
	self assert: response isCreated.
	self assert: response location equals: 'http://www.example.com:8888/something/else/foo.txt'.
	self assert: response status equals: 201.
	self deny: response isNotFound 