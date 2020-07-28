as yet unclassified
testWriting_amp_A13
	<madeBySmallAmp>
	| headers string aZnHeaders |
	aZnHeaders := ZnHeaders new.
	aZnHeaders at: 'Content-Type' put: 'text/plain'.
	self should: [ aZnHeaders contentLength ] raise: KeyNotFound