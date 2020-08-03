testing
testCookie
	| response cookie1  responseString |
	response := ZnResponse ok: (ZnStringEntity html: '<h1>hello world</h1>').
	cookie1 := ZnCookie new.
	cookie1 
		name: 'testCookie1';
		value: '123'.
		
	response addCookie: cookie1.
	
	responseString := String streamContents: [ :stream | response writeOn: stream ].
	
	self assert: (responseString includesSubstring: 'Set-Cookie: testCookie1=123').
	self assert: response cookies class equals: Array.
	self assert: response cookies size equals: 1.
	self assert: (response cookies at: 1) class equals: ZnCookie.
	self assert: (response cookies at: 1) value equals: '123'.
	self deny: (response cookies at: 1) httponly.
	self assert: (response cookies at: 1) expires isNil.
	self deny: (response cookies at: 1) secure.
	self assert: (response cookies at: 1) maxage isNil.
	self assert: (response cookies at: 1) path equals: '/'.
	self deny: (response cookies at: 1) isExpired.
	self assert: (response cookies at: 1) name equals: 'testCookie1'.
	self assert: (response cookies at: 1) domain isNil