as yet unclassified
testReadingMultilineMultiValue_amp_A2
	"I test correctness of: 

- `^ self new
	at: 'User-Agent' put: (ZnCurrentOptions at: #userAgentString);
	at: 'Accept' put: '*/*';
	yourself` in method: `ZnHeaders class >> #defaultRequestHeaders`

"

	<madeBySmallAmp>
	| string headers aZnHeaders |
	string := 'Content-Type: text/plain' , String crlf , 'Long: foo'
		, String crlf , ' bar' , String crlf , String tab , 'baz'
		, String crlf , 'Content-Length: 128' , String crlf , 'Long: more'
		, String crlf.
	aZnHeaders := ZnHeaders
		readFrom: string asByteArray readStream;
		defaultRequestHeaders.
	self assert:
		aZnHeaders class equals: ZnHeaders