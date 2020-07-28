as yet unclassified
testWriting_amp_A10
	"I test correctness of: 

- `^ self code: 400` in method: `ZnStatusLine class >> #badRequest`

"

	<madeBySmallAmp>
	| statusLine string aZnStatusLine |
	aZnStatusLine := ZnStatusLine
		ok;
		badRequest.
	self assert:
		aZnStatusLine class equals: ZnStatusLine