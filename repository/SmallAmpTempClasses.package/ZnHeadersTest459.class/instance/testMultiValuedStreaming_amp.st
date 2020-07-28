as yet unclassified
testMultiValuedStreaming_amp
	"I test correctness of: 

- `(self headers includesKey: 'Content-Type')
	and: [ self headers includesKey: 'Content-Length' ]` in method: `ZnHeaders >> #isDescribingEntity`

"

	<madeBySmallAmp>
	| headers keysAndValues |
	headers := ZnHeaders new.
	self deny: headers isDescribingEntity.
	headers
		at: 'Set-Cookie' put: 'foo=1';
		at: 'Set-Cookie' add: 'bar=1'