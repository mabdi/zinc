as yet unclassified
testAsFileUrl_amp_A11
	<madeBySmallAmp>
	| aZnUrl |
	aZnUrl := 'http://localhost:80/foo/bar/doc.txt' asZnUrl.
	aZnUrl asFileUrl.
	self
		should: [ aZnUrl asFileReferenceWithRelativePath ]
		raise: AssertionFailure