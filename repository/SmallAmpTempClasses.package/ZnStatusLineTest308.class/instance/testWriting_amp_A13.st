as yet unclassified
testWriting_amp_A13
	"I test correctness of: 

- `^ self code: 303` in method: `ZnStatusLine class >> #seeOther`

"

	<madeBySmallAmp>
	| statusLine string aZnStatusLine |
	aZnStatusLine := ZnStatusLine
		ok;
		seeOther.
	self assert:
		aZnStatusLine class equals: ZnStatusLine