as yet unclassified
testWriting_amp_A4
	"I test correctness of: 

- `^ self code: 202` in method: `ZnStatusLine class >> #accepted`

"

	<madeBySmallAmp>
	| statusLine string aZnStatusLine |
	aZnStatusLine := ZnStatusLine
		ok;
		accepted.
	self assert:
		aZnStatusLine class equals: ZnStatusLine