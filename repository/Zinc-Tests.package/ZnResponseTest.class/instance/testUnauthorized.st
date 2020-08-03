testing
testUnauthorized
	| aZnResponse |
	aZnResponse := ZnResponse unauthorized.
	self assert: aZnResponse class equals: ZnResponse.
	self
		assert: aZnResponse wwwAuthenticate
		equals: 'Basic realm=ZincHTTPComponents'.
	self assert: aZnResponse isAuthenticationRequired.
	self assert: aZnResponse code equals: 401.
	self
		assert: aZnResponse contents
		equals:
			'Unauthorized', String crlf.
	self assert: aZnResponse isError.
	self deny: aZnResponse isSuccess