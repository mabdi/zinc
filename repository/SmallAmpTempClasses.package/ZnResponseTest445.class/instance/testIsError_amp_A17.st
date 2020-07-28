as yet unclassified
testIsError_amp_A17
	"I test correctness of: 

- `^ self statusLine: ZnStatusLine noContent` in method: `ZnResponse class >> #noContent`

"

	<madeBySmallAmp>
	| response aZnResponse |
	aZnResponse := ZnResponse
		ok: (ZnStringEntity html: '<h1>hello world</h1>');
		notFound: 'http:///secret.txt';
		redirect: '/something/else/foo.txt';
		noContent.
	self assert:
		aZnResponse class equals: ZnResponse