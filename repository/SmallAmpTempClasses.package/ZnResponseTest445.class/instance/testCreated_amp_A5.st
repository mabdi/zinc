as yet unclassified
testCreated_amp_A5
	"I test correctness of: 

- `^ self statusLine: ZnStatusLine notModified` in method: `ZnResponse class >> #notModified`

"

	<madeBySmallAmp>
	| response uri aZnResponse |
	uri := '/something/else/foo.txt'.
	aZnResponse := ZnResponse
		created: uri;
		notModified.
	self assert:
		aZnResponse class equals: ZnResponse