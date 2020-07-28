as yet unclassified
testWritingBinary_amp_A2
	"I test correctness of: 

- `^ self
	unauthorized: authString
	entity: (ZnEntity textCRLF: 'Unauthorized')` in method: `ZnResponse class >> #unauthorized:`

"

	<madeBySmallAmp>
	| response bytes string aZnResponse |
	aZnResponse := ZnResponse
		ok: (ZnEntity text: 'Okay');
		unauthorized.
	self assert:
		aZnResponse class equals: ZnResponse