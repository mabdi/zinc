as yet unclassified
testWriting_amp_A9
	"I test correctness of: 

- `^ self code: 204` in method: `ZnStatusLine class >> #noContent`

"

	<madeBySmallAmp>
	| statusLine string aZnStatusLine |
	aZnStatusLine := ZnStatusLine
		ok;
		noContent.
	self assert:
		aZnStatusLine class equals: ZnStatusLine