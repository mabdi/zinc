as yet unclassified
testBasicAuthenticate_amp_A67
	<madeBySmallAmp>
	| request |
	request := ZnRequest new.
	request
		setBasicAuthenticationUsername: 'user' password: 'secret';
		setBasicAuthenticationUsername: 'user' password: '';
		setBasicAuthenticationUsername: 'user' password: ':colons:'.
	self
		should: [ request wantsConnectionClose ]
		raise: MessageNotUnderstood