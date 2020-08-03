testing
testOk
	| response |
	response := ZnResponse ok: (ZnEntity text: 'Okay').
	self deny: response isAuthenticationRequired.
	self assert: response cookies class equals: Array.
	self deny: response isBadRequest.
	self deny: response isCreated.
	self assert: response isSuccess.
	self deny: response hasTransferEncoding.
	self deny: response hasContentEncoding.
	self deny: response isNotFound