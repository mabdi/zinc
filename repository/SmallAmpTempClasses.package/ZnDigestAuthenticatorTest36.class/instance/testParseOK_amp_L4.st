as yet unclassified
testParseOK_amp_L4
	"I test correctness of: 

- `^ (cls new initialize hashStream: aString asByteArray readStream) hex` in method: `ZnDigestAuthenticator class >> #md5Hash:` when {#aString->'test'}

"

	<madeBySmallAmp>
	| keys headerValue |
	headerValue := '00?m|!2QE{3G	Gd"2#''\^±h)Z;	>pjug'.
	keys := ZnDigestAuthenticator parseAuthRequest: headerValue.
	self assert: ZnDigestAuthenticator hasMD5Support