as yet unclassified
testQueryManipulation_amp_A189
	"I test correctness of: 

- `self hasPath
	ifTrue: [ segments
			inject: host hash
			into: [ :sum :each | sum bitXor: each hash ] ]
	ifFalse: [ host hash ]` in method: `ZnUrl >> #hash`

"

	<madeBySmallAmp>
	| url anInteger |
	url := 'http://www.google.com/?one=1&two=2' asZnUrl.
	anInteger := url
		queryAt: 'three' put: '3';
		queryRemoveKey: 'one';
		queryRemoveAll;
		hash.
	self assert: anInteger equals: 214625365