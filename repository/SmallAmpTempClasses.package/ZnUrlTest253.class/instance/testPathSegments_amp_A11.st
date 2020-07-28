as yet unclassified
testPathSegments_amp_A11
	<madeBySmallAmp>
	| aZnUrl |
	aZnUrl := 'http://foo.com/x/y/z' asZnUrl.
	aZnUrl pathSegments.
	self
		should: [ aZnUrl asFileReferenceWithRelativePath ]
		raise: AssertionFailure