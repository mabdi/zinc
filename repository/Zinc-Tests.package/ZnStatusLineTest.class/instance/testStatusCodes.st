tests
testStatusCodes
	| aZnStatusLine |
	aZnStatusLine := ZnStatusLine accepted.
	self assert: aZnStatusLine class equals: ZnStatusLine.
	self assert: aZnStatusLine version equals: 'HTTP/1.1'.
	self assert: aZnStatusLine code equals: 202.
	aZnStatusLine := ZnStatusLine badRequest.
	self assert: aZnStatusLine code equals: 400.
	aZnStatusLine := ZnStatusLine created.
	self assert: aZnStatusLine code equals: 201.
	aZnStatusLine := ZnStatusLine forbidden.
	self assert: aZnStatusLine code equals: 403.
	aZnStatusLine := ZnStatusLine found.
	self assert: aZnStatusLine code equals: 302.
	aZnStatusLine := ZnStatusLine internalServerError.
	self assert: aZnStatusLine code equals: 500.
	aZnStatusLine := ZnStatusLine methodNotAllowed.
	self assert: aZnStatusLine code equals: 405.
	aZnStatusLine := ZnStatusLine movedPermanently.
	self assert: aZnStatusLine code equals: 301.
	aZnStatusLine := ZnStatusLine noContent.
	self assert: aZnStatusLine code equals: 204.
	aZnStatusLine := ZnStatusLine notFound.
	self assert: aZnStatusLine code equals: 404.
	aZnStatusLine := ZnStatusLine notImplemented.
	self assert: aZnStatusLine code equals: 501.
	aZnStatusLine := ZnStatusLine notModified.
	self assert: aZnStatusLine code equals: 304.
	aZnStatusLine := ZnStatusLine redirect.
	self assert: aZnStatusLine code equals: 302.
	aZnStatusLine := ZnStatusLine seeOther.
	self assert: aZnStatusLine code equals: 303.
	aZnStatusLine := ZnStatusLine unauthorized.
	self assert: aZnStatusLine code equals: 401