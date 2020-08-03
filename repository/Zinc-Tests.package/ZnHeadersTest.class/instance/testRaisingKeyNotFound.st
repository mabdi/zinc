testing
testRaisingKeyNotFound
	| headers |
	headers := ZnHeaders new.
	self should: [ headers at: 'Not-Exist' ] raise: KeyNotFound.
	self should: [ headers contentLength ] raise: KeyNotFound.
	self should: [ headers contentType ] raise: KeyNotFound