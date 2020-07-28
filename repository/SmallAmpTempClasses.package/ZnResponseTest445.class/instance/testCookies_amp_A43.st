as yet unclassified
testCookies_amp_A43
	"I test correctness of: 

- `^ super hash bitXor: self status hash` in method: `ZnResponse >> #hash`

"

	<madeBySmallAmp>
	| response cookie1 cookie2 responseString anInteger |
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
	anInteger := response
		addCookie: cookie1;
		addCookie: cookie2;
		hash.
	self assert:
		anInteger class equals: SmallInteger