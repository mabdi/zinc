as yet unclassified
testDynamicLimit_amp_L6
	<madeBySmallAmp>
	self
		should: [ ZnMaximumNumberOfDictionaryEntries
				value: SmallInteger minVal
				during: [ | dictionary |
					dictionary := ZnMultiValueDictionary new.
					1 to: 10 do: [ :each | dictionary at: each put: each ] ] ]
		raise: ZnTooManyDictionaryEntries