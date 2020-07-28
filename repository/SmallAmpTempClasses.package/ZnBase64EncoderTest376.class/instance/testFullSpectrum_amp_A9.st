as yet unclassified
testFullSpectrum_amp_A9
	<madeBySmallAmp>
	| encoder input output |
	encoder := ZnBase64Encoder new.
	input := (0 to: 255) asByteArray , (255 to: 0) asByteArray.
	output := encoder encode: input.
	self
		should: [ encoder decode: 'TWE' ]
		raise: ZnCharacterEncodingError