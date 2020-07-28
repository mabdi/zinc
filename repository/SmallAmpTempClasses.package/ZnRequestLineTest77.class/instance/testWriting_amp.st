as yet unclassified
testWriting_amp
	"I test correctness of: 

- `^ self version = 'HTTP/1.1'` in method: `ZnRequestLine >> #isHttp11`

- `^ self version = 'HTTP/1.0'` in method: `ZnRequestLine >> #isHttp10`

"

	<madeBySmallAmp>
	| requestLine string |
	requestLine := ZnRequestLine method: 'GET' uri: '/foo/bar/xyz.txt'.
	self
		assert: requestLine isHttp11;
		deny: requestLine isHttp10