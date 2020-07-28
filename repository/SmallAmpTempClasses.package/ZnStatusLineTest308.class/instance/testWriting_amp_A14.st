as yet unclassified
testWriting_amp_A14
	"I test correctness of: 

- `^ self code: 403` in method: `ZnStatusLine class >> #forbidden`

"

	<madeBySmallAmp>
	| statusLine string aZnStatusLine |
	aZnStatusLine := ZnStatusLine
		ok;
		forbidden.
	self assert:
		aZnStatusLine class equals: ZnStatusLine