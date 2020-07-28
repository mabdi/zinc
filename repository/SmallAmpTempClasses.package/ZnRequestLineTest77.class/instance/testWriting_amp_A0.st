as yet unclassified
testWriting_amp_A0
	"I test correctness of: 

- `^ self new
	version: ZnConstants defaultHTTPVersion;
	yourself` in method: `ZnRequestLine class >> #empty`

"

	<madeBySmallAmp>
	| requestLine string aZnRequestLine |
	aZnRequestLine := ZnRequestLine
		method: 'GET' uri: '/foo/bar/xyz.txt';
		empty.
	self assert:
		aZnRequestLine class equals: ZnRequestLine