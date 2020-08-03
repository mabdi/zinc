testing
testReadingMultiline
	| string headers |
	string := 'Content-Type: text/plain' , String crlf , 'Long: foo'
		, String crlf , ' bar' , String crlf , String tab , 'baz'
		, String crlf , 'Content-Length: 128' , String crlf.
	headers := ZnHeaders readFrom: string asByteArray readStream.
	self
		assert: headers isDescribingEntity;
		assert: headers contentType class equals: ZnMimeType;
		assert: headers contentType main equals: 'text';
		assert: headers hasContentType.
	self assert: (headers includesKey: 'Content-Type').
	self assert: (headers includesKey: 'Content-Length').
	self assert: (headers at: 'Content-Type') equals: 'text/plain'.
	self
		assert: headers contentLength equals: 128;
		assert: headers hasContentLength.
	self assert: (headers at: 'Content-Length') equals: '128'.
	self assert: (headers includesKey: #Long).
	self assert: (headers at: #long) equals: 'foo bar	baz'