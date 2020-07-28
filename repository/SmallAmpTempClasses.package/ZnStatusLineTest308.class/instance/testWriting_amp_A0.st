as yet unclassified
testWriting_amp_A0
	"I test correctness of: 

- `^ self code: 302` in method: `ZnStatusLine class >> #found`

"

	<madeBySmallAmp>
	| statusLine string aZnStatusLine |
	aZnStatusLine := ZnStatusLine
		ok;
		found.
	self assert:
		aZnStatusLine class equals: ZnStatusLine