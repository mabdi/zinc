as yet unclassified
testParseEmpty_amp_L4
	"I test correctness of: 

- `(self md5Hash: 'test') isNil not` in method: `ZnDigestAuthenticator class >> #hasMD5Support`

"

	<madeBySmallAmp>
	| keys headerValue |
	headerValue := 'kNo!~0JF$Mb0O%hUe~BNkk&6B,±t(sSi'.
	keys := ZnDigestAuthenticator parseAuthRequest: headerValue.
	self assert: ZnDigestAuthenticator hasMD5Support