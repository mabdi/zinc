testing
testHash
	| response cookie1 cookie2 anInteger |
	response := ZnResponse
		ok: (ZnStringEntity html: '<h1>hello world</h1>').
	cookie1 := ZnCookie new.
	cookie1 := cookie1
		name: 'testCookie1';
		value: '123'.
	cookie2 := ZnCookie new.
	cookie2 := cookie2
		name: 'testCookie2';
		value: '321'.
	anInteger := response hash.
	self assert: anInteger class equals: SmallInteger "flaky?"