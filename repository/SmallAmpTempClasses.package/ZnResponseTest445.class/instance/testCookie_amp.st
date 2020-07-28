as yet unclassified
testCookie_amp
	"I test correctness of: 

- `^ cookies collect: [ :each | ZnCookie fromString: each ]` in method: `ZnResponse >> #cookies` when {#cookies->#('testCookie1=123')}

"

	<madeBySmallAmp>
	| response cookie1 responseString |
	response := ZnResponse
		ok: (ZnStringEntity html: '<h1>hello world</h1>').
	cookie1 := ZnCookie new.
	cookie1 := cookie1
		name: 'testCookie1';
		value: '123'.
	response addCookie: cookie1.
	self assert: response cookies class equals: Array