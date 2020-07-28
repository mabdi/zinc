as yet unclassified
testMultiValued_amp_A10
	"I test correctness of: 

- `^ self headers hash` in method: `ZnHeaders >> #hash`

"

	<madeBySmallAmp>
	| headers anInteger |
	headers := ZnHeaders new.
	anInteger := headers
		at: 'Set-Cookie' put: 'foo=1';
		hash.
	self assert: anInteger equals: 71623499.
	headers at: 'Set-Cookie' add: 'bar=1'