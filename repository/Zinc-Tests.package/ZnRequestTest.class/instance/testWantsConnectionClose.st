tests
testWantsConnectionClose
	self deny: ZnRequest empty wantsConnectionClose.
	self
		should: [ ZnRequest new wantsConnectionClose ]
		raise: MessageNotUnderstood "#isHttp10 was sent to nil"
	