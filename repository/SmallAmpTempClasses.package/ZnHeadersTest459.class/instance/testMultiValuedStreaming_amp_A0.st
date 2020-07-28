as yet unclassified
testMultiValuedStreaming_amp_A0
	"I test correctness of: 

- `^ self new
	at: 'Server' put: (ZnCurrentOptions at: #serverString);
	at: 'Date' put: ZnUtils httpDate;
	yourself` in method: `ZnHeaders class >> #defaultResponseHeaders`

"

	<madeBySmallAmp>
	| headers keysAndValues aZnHeaders |
	headers := ZnHeaders new.
	aZnHeaders := ZnHeaders defaultResponseHeaders.
	self assert:
		aZnHeaders class equals: ZnHeaders.
	headers
		at: 'Set-Cookie' put: 'foo=1';
		at: 'Set-Cookie' add: 'bar=1'