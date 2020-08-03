testing
testAsFileUrl
	self
		assert: 'http://localhost:80/foo/bar/doc.txt' asZnUrl asFileUrl isFile.
	'http://localhost:80/foo/bar/doc.txt' asZnUrl
		asFileReferenceWithRelativePath.
	self
		should: [ 'http://localhost:80/foo/bar/doc.txt' asZnUrl
				asFileReferenceWithRelativePath ]
		raise: AssertionFailure.	"AssertionFailure: Only filetree:// URL can be converted to a FileReference with relative Paths"
	self
		assert: 'http://localhost:80/foo/bar/doc.txt' asZnUrl path
		equals: 'http://localhost:80/foo/bar/doc.txt' asZnUrl asFileUrl path