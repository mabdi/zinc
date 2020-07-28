as yet unclassified
testWriting_amp_A2
	"I test correctness of: 

- `^ self code: 500` in method: `ZnStatusLine class >> #internalServerError`

"

	<madeBySmallAmp>
	| statusLine string aZnStatusLine |
	aZnStatusLine := ZnStatusLine
		ok;
		internalServerError.
	self assert:
		aZnStatusLine class equals: ZnStatusLine