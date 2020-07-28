as yet unclassified
testBasicAuthenticate_amp_A48
	"I test correctness of: 

- `^ value includesSubstring: 'gzip'` in method: `ZnRequest >> #acceptsEncodingGzip` when {#value->'gzip'}

"

	<madeBySmallAmp>
	| request |
	request := ZnRequest new.
	request
		setBasicAuthenticationUsername: 'user' password: 'secret';
		setBasicAuthenticationUsername: 'user' password: '';
		setBasicAuthenticationUsername: 'user' password: ':colons:';
		setAcceptEncodingGzip.
	self assert: request acceptsEncodingGzip