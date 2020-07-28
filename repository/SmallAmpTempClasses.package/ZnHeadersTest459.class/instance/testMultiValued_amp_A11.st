as yet unclassified
testMultiValued_amp_A11
	<madeBySmallAmp>
	| headers |
	headers := ZnHeaders new.
	headers at: 'Set-Cookie' put: 'foo=1'.
	self should: [ headers at: 'Long' ] raise: KeyNotFound