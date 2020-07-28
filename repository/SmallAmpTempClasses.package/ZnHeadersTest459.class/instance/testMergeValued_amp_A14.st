as yet unclassified
testMergeValued_amp_A14
	<madeBySmallAmp>
	| headers |
	headers := ZnHeaders new.
	headers at: 'Set-Cookie' put: 'foo=1'.
	self should: [ headers contentType ] raise: KeyNotFound