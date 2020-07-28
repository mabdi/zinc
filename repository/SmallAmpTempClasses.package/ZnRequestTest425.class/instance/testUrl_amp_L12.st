as yet unclassified
testUrl_amp_L12
	"I test correctness of: 

- `^ self requestLine isHttp11` in method: `ZnRequest >> #isHttp11`

- `^ self requestLine isHttp10` in method: `ZnRequest >> #isHttp10`

- `^ self headers at: 'Accept'` in method: `ZnRequest >> #accept`

- `^ false` in method: `ZnRequest >> #acceptsEncodingGzip`

- `^ self isConnectionClose
	or: [ self isHttp10 and: [ self isConnectionKeepAlive not ] ]` in method: `ZnRequest >> #wantsConnectionClose`

"

	<madeBySmallAmp>
	| url request input |
	url := 'http://zn.stfx.eu/zn/small.thml' asZnUrl.
	request := ZnRequest get: url.
	self
		assert: request isHttp11;
		deny: request isHttp10;
		assert: request accept equals: '*/*';
		deny: request acceptsEncodingGzip;
		deny: request wantsConnectionClose.
	url := 'http://foo.com/foo.html' asZnUrl.
	input := 'G>ET /foo.html HTTP/1.1' , String crlf , 'Host: foo.com'
		, String crlf , String crlf.
	self
		should: [ request := ZnRequest readFrom: input readStream ]
		raise: ZnUnknownHttpMethod