as yet unclassified
testRelative_amp_A25
	<madeBySmallAmp>
	| url |
	url := 'http://api.foo.com:8080' asZnUrl.
	url parseFrom: '/user/1?format=full'.
	self should: [ url asFileReference ] raise: AssertionFailure