testing
testHash
	| urlWithPath urlWithoutPath |
	urlWithPath := 'http://localhost:8080/foo/bar/doc.txt' asZnUrl.
	self assert: urlWithPath hash equals: 207009988.
	urlWithoutPath := 'http://www.google.com/?one=1&two=2' asZnUrl.
	self assert: urlWithoutPath hash equals: 214625365