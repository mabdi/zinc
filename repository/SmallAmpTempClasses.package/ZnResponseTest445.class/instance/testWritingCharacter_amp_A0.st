as yet unclassified
testWritingCharacter_amp_A0
	"I test correctness of: 

- `^ self statusLine: ZnStatusLine accepted` in method: `ZnResponse class >> #accepted`

"

	<madeBySmallAmp>
	| response string aZnResponse |
	aZnResponse := ZnResponse
		ok: (ZnEntity text: 'Okay');
		accepted.
	self assert:
		aZnResponse class equals: ZnResponse