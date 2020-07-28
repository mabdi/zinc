as yet unclassified
testReadingMultiline_amp
	"I test correctness of: 

- `^ ZnMimeType fromString: headerValue` in method: `ZnHeaders >> #contentType`

- `headerValue isEmpty` in method: `ZnHeaders >> #contentType` when {#headerValue->'text/plain'}

- `^ self includesKey: 'Content-Type'` in method: `ZnHeaders >> #hasContentType`

- `^ Integer
	readFrom: value
	ifFail: [ self error: 'Illegal HTTP Content Length' ]` in method: `ZnHeaders >> #contentLength`

- `^ self includesKey: 'Content-Length'` in method: `ZnHeaders >> #hasContentLength`

- `^ (self headers includesKey: 'Content-Type')
	and: [ self headers includesKey: 'Content-Length' ]` in method: `ZnHeaders >> #isDescribingEntity`

"

	<madeBySmallAmp>
	| string headers |
	string := 'Content-Type: text/plain' , String crlf , 'Long: foo'
		, String crlf , ' bar' , String crlf , String tab , 'baz'
		, String crlf , 'Content-Length: 128' , String crlf.
	headers := ZnHeaders readFrom: string asByteArray readStream.
	self
		assert: headers contentType class equals: ZnMimeType;
		assert: headers contentType main equals: 'text';
		assert: headers hasContentType;
		assert: headers contentLength equals: 128;
		assert: headers hasContentLength;
		assert: headers isDescribingEntity