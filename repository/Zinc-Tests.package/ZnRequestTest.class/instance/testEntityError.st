testing
testEntityError
	| request form |
	request := ZnRequest post: 'http:/D/host.com/foo?x=1&y=2&x=3'.
	form := ZnApplicationFormUrlEncodedEntity new.
	form := form
		at: #z put: '100';
		at: #z add: '200';
		at: #y put: '0'.
	self should: [ request entity: form ] raise: MessageNotUnderstood	"Instance of ByteString did not understand #contentType"