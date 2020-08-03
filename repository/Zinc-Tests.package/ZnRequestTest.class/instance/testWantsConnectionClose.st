tests
testWantsConnectionClose
	| aZnRequest |
	aZnRequest := ZnRequest new.
	self
		should: [ aZnRequest wantsConnectionClose ]
		raise: MessageNotUnderstood. "#isHttp10 was sent to nil"
	aZnRequest := ZnRequest empty.
	self deny: aZnRequest wantsConnectionClose