as yet unclassified
testNormalization_amp_A13
	<madeBySmallAmp>
	| headers |
	headers := ZnHeaders new.
	headers at: 'content-TYPE' put: 'text/plain'.
	self should: [ headers contentLength ] raise: KeyNotFound