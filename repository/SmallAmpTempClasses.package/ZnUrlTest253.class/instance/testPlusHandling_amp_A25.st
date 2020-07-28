as yet unclassified
testPlusHandling_amp_A25
	<madeBySmallAmp>
	| aZnUrl |
	aZnUrl := 'http://localhost/foo+bar' asZnUrl.
	aZnUrl firstPathSegment.
	self should: [ aZnUrl asFileReference ] raise: AssertionFailure