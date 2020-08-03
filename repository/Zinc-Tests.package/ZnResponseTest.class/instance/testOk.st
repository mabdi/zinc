testing
testOk
	| response |
	response := ZnResponse ok: (ZnEntity text: 'Okay').
	self
		deny: response isAuthenticationRequired;
		assert: response cookies class equals: Array;
		deny: response isBadRequest;
		deny: response isCreated;
		assert: response isSuccess;
		deny: response hasTransferEncoding;
		deny: response hasContentEncoding;
		deny: response isNotFound