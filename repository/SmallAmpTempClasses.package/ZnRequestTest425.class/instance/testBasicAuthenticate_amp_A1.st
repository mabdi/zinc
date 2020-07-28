as yet unclassified
testBasicAuthenticate_amp_A1
	"I test correctness of: 

- `^ nil` in method: `ZnRequest >> #host`

- `self isHttp10 and: [ self isConnectionKeepAlive not ]` in method: `ZnRequest >> #wantsConnectionClose`

"

	<madeBySmallAmp>
	| request aZnRequest |
	request := ZnRequest new.
	self assert: request host isNil.
	aZnRequest := ZnRequest empty.
	self deny:
		aZnRequest wantsConnectionClose.
	request
		setBasicAuthenticationUsername: 'user' password: 'secret';
		setBasicAuthenticationUsername: 'user' password: '';
		setBasicAuthenticationUsername: 'user' password: ':colons:'