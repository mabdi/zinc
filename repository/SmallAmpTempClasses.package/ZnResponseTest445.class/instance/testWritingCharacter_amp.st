as yet unclassified
testWritingCharacter_amp
	"I test correctness of: 

- `^ self code = 401` in method: `ZnResponse >> #isAuthenticationRequired`

- `^ #()` in method: `ZnResponse >> #cookies`

- `self code = 400` in method: `ZnResponse >> #isBadRequest`

- `^ self code = 201` in method: `ZnResponse >> #isCreated`

- `^ #(200 201 202 204) includes: self code` in method: `ZnResponse >> #isSuccess`

- `^ self headers includesKey: 'Transfer-Encoding'` in method: `ZnResponse >> #hasTransferEncoding`

- `^ self headers includesKey: 'Content-Encoding'` in method: `ZnResponse >> #hasContentEncoding`

- `self code = 404` in method: `ZnResponse >> #isNotFound`

"

	<madeBySmallAmp>
	| response string |
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