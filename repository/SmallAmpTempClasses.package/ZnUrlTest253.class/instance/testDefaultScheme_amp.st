as yet unclassified
testDefaultScheme_amp
	"I test correctness of: 

- `^ scheme == #https` in method: `ZnUrl >> #isHttps` when {#scheme->#file}

- `self isAbsolute not` in method: `ZnUrl >> #isRelative`

- `^ scheme == #http` in method: `ZnUrl >> #isHttp` when {#scheme->#file}

- `^ String
	streamContents: [ :stream | 
		stream
			nextPutAll: self host;
			nextPut: $:;
			print: self portOrDefault ]` in method: `ZnUrl >> #authorityWithPort`

"

	<madeBySmallAmp>
	| url |
	url := ZnUrl
		fromString: 'www.example.com/foo.html'
		defaultScheme: #http.
	self
		deny: ZnUrl image isHttps;
		assert: ZnUrl image isRelative;
		deny: ZnUrl image isHttp;
		assert: url authorityWithPort equals: 'www.example.com:80'