as yet unclassified
testCookiesParsing_amp_A15
	"I test correctness of: 

- `^ super hash bitXor: self requestLine hash` in method: `ZnRequest >> #hash`

"

	<madeBySmallAmp>
	| input request cookies testCookie1 testCookie2 anInteger |
	input := 'GET /foo.html HTTP/1.1' , String crlf
		, 'Cookie: testCookie1=123; testCookie2=321' , String crlf
		, 'Host: foo.com' , String crlf , 'Agent: SUnit' , String crlf
		, String crlf.
	request := ZnRequest readFrom: input readStream.
	anInteger := request
		cookies;
		hash.
	self assert: anInteger equals: 244276601