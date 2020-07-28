as yet unclassified
testWriting_amp_A7
	"I test correctness of: 

- `^ self code: 501` in method: `ZnStatusLine class >> #notImplemented`

"

	<madeBySmallAmp>
	| statusLine string aZnStatusLine |
	aZnStatusLine := ZnStatusLine
		ok;
		notImplemented.
	self assert:
		aZnStatusLine class equals: ZnStatusLine