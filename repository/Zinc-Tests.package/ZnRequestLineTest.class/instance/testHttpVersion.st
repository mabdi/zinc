tests
testHttpVersion
	| requestLine |
	requestLine := ZnRequestLine method: 'GET' uri: '/foo/bar/xyz.txt'.
	self
		assert: requestLine isHttp11;
		deny: requestLine isHttp10