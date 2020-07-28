as yet unclassified
testMultiValues_amp_L20
	<madeBySmallAmp>
	| dictionary values keys |
	dictionary := ZnMultiValueDictionary new.
	dictionary := dictionary
		at: 'foo' add: 1;
		at: 'foo' add: 1.
	values := OrderedCollection new.
	keys := OrderedCollection new.
	self
		should: [ dictionary
				keysAndValuesDo: [ :key :value | 
					keys add: key.
					values add: value ] ]
		raise: MessageNotUnderstood