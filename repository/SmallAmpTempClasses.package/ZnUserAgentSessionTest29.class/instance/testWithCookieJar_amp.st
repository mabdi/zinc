as yet unclassified
testWithCookieJar_amp
	"I test correctness of: 

- `^ currentRealm` in method: `ZnUserAgentSession >> #currentRealm` when {#currentRealm->nil}

"

	<madeBySmallAmp>
	| aZnUserAgentSession |
	aZnUserAgentSession := ZnUserAgentSession
		withCookieJar: ZnCookieJar new.
	self assert:
		aZnUserAgentSession currentRealm isNil.
	aZnUserAgentSession notNil