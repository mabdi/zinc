as yet unclassified
testWriting_amp_A5
	"I test correctness of: 

- `^ self code: 401` in method: `ZnStatusLine class >> #unauthorized`

"

	<madeBySmallAmp>
	| statusLine string aZnStatusLine |
	aZnStatusLine := ZnStatusLine
		ok;
		unauthorized.
	self assert:
		aZnStatusLine class equals: ZnStatusLine