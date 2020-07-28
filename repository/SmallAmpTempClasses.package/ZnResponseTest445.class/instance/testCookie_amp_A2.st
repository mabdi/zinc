as yet unclassified
testCookie_amp_A2
	"I test correctness of: 

- `^ self unauthorized: 'Basic realm=ZincHTTPComponents'` in method: `ZnResponse class >> #unauthorized`

- `^ self headers at: 'WWW-Authenticate'` in method: `ZnResponse >> #wwwAuthenticate`

"

	<madeBySmallAmp>
	| response cookie1 responseString aZnResponse |
	response := ZnResponse
		ok: (ZnStringEntity html: '<h1>hello world</h1>').
	aZnResponse := ZnResponse unauthorized.
	self
		assert:
			aZnResponse class equals: ZnResponse;
		assert:
			aZnResponse wwwAuthenticate
			equals: 'Basic realm=ZincHTTPComponents'.
	cookie1 := ZnCookie new.
	cookie1 := cookie1
		name: 'testCookie1';
		value: '123'.
	response addCookie: cookie1