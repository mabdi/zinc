as yet unclassified
testWriting_amp_A1
	"I test correctness of: 

- `^ self code: 304` in method: `ZnStatusLine class >> #notModified`

"

	<madeBySmallAmp>
	| statusLine string aZnStatusLine |
	aZnStatusLine := ZnStatusLine
		ok;
		notModified.
	self assert:
		aZnStatusLine class equals: ZnStatusLine