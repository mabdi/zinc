as yet unclassified
testAbsoluteCreated_amp
	"I test correctness of: 

- `self code = 401` in method: `ZnResponse >> #isAuthenticationRequired`

- `^ self code = 400` in method: `ZnResponse >> #isBadRequest`

- `self code = 201` in method: `ZnResponse >> #isCreated`

- `^ self headers at: 'Location'` in method: `ZnResponse >> #location`

- `^ self statusLine code` in method: `ZnResponse >> #status`

- `^ self code = 404` in method: `ZnResponse >> #isNotFound`

"

	<madeBySmallAmp>
	| response uri |
	uri := 'http://www.example.com:8888/something/else/foo.txt'.
	response := ZnResponse created: uri asZnUrl.
	self
		deny: response isAuthenticationRequired;
		deny: response isBadRequest;
		assert: response isCreated;
		assert: response location
			equals: 'http://www.example.com:8888/something/else/foo.txt';
		assert: response status equals: 201;
		deny: response isNotFound