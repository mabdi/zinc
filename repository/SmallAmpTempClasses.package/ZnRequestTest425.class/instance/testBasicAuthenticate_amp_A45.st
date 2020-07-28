as yet unclassified
testBasicAuthenticate_amp_A45
	<madeBySmallAmp>
	| request |
	request := ZnRequest new.
	request
		setBasicAuthenticationUsername: 'user' password: 'secret';
		setBasicAuthenticationUsername: 'user' password: ''.
	self
		should: [ request wantsConnectionClose ]
		raise: MessageNotUnderstood