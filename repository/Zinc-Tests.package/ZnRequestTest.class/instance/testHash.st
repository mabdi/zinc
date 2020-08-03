tests
testHash
	| input request |
	input := 'GET /foo.html HTTP/1.1' , String crlf
		, 'Cookie: testCookie1=123; testCookie2=321' , String crlf
		, 'Host: foo.com' , String crlf , 'Agent: SUnit' , String crlf
		, String crlf.
	request := ZnRequest readFrom: input readStream.
	self assert: request hash equals: 244276601