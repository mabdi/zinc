as yet unclassified
testBogusBackups_amp_A30
	"I test correctness of: 

- `^ false` in method: `ZnUrl >> #stonContainSubObjects`

"

	<madeBySmallAmp>
	| aZnUrl aFalse |
	aZnUrl := '/../../../' asZnUrl.
	aFalse := aZnUrl
		isSlash;
		stonContainSubObjects.
	self deny: aFalse