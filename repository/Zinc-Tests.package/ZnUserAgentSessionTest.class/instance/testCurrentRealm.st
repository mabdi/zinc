tests
testCurrentRealm
	self assert: (ZnUserAgentSession withCookieJar: ZnCookieJar new) currentRealm isNil.