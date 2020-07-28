as yet unclassified
testWriting_amp_A11
	"I test correctness of: 

- `^ self code: 405` in method: `ZnStatusLine class >> #methodNotAllowed`

"

	<madeBySmallAmp>
	| statusLine string aZnStatusLine |
	aZnStatusLine := ZnStatusLine
		ok;
		methodNotAllowed.
	self assert:
		aZnStatusLine class equals: ZnStatusLine