as yet unclassified
testWriting_amp_A12
	"I test correctness of: 

- `^ self code: 404` in method: `ZnStatusLine class >> #notFound`

"

	<madeBySmallAmp>
	| statusLine string aZnStatusLine |
	aZnStatusLine := ZnStatusLine
		ok;
		notFound.
	self assert:
		aZnStatusLine class equals: ZnStatusLine