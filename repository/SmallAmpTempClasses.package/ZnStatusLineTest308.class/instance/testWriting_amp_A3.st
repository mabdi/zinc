as yet unclassified
testWriting_amp_A3
	"I test correctness of: 

- `^ self code: 302` in method: `ZnStatusLine class >> #redirect`

"

	<madeBySmallAmp>
	| statusLine string aZnStatusLine |
	aZnStatusLine := ZnStatusLine
		ok;
		redirect.
	self assert:
		aZnStatusLine class equals: ZnStatusLine