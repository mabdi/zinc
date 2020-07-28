as yet unclassified
testWriting_amp_A8
	"I test correctness of: 

- `^ self code: 201` in method: `ZnStatusLine class >> #created`

"

	<madeBySmallAmp>
	| statusLine string aZnStatusLine |
	aZnStatusLine := ZnStatusLine
		ok;
		created.
	self assert:
		aZnStatusLine class equals: ZnStatusLine