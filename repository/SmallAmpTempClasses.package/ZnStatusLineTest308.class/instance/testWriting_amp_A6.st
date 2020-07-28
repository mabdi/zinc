as yet unclassified
testWriting_amp_A6
	"I test correctness of: 

- `^ self code: 301` in method: `ZnStatusLine class >> #movedPermanently`

"

	<madeBySmallAmp>
	| statusLine string aZnStatusLine |
	aZnStatusLine := ZnStatusLine
		ok;
		movedPermanently.
	self assert:
		aZnStatusLine class equals: ZnStatusLine