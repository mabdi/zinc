as yet unclassified
testAuthority_amp_A27
	"I test correctness of: 

- `^ self hasPath
	ifTrue: [ segments
			inject: host hash
			into: [ :sum :each | sum bitXor: each hash ] ]
	ifFalse: [ host hash ]` in method: `ZnUrl >> #hash`

"

	<madeBySmallAmp>
	| aString aZnUrl anInteger |
	aZnUrl := 'http://localhost:8080/foo/bar/doc.txt' asZnUrl.
	aString := aZnUrl authority.
	anInteger := aZnUrl hash.
	self assert: anInteger equals: 207009988.
	(aString = 'localhost:8080') value.
	'http://www.google.com?q=Smalltalk' asZnUrl authority