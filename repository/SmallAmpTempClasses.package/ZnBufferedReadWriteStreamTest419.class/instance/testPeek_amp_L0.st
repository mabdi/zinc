as yet unclassified
testPeek_amp_L0
	"I test correctness of: 

- `^ true` in method: `ZnBufferedReadWriteStream >> #isStream`

- `^ readStream wrappedStream` in method: `ZnBufferedReadWriteStream >> #wrappedStream`

- `^ readStream isBinary` in method: `ZnBufferedReadWriteStream >> #isBinary`

"

	<madeBySmallAmp>
	| stream |
	stream := ZnBufferedReadWriteStream on: '' readStream.
	self
		assert: stream isStream;
		assert: stream wrappedStream class equals: ReadStream;
		deny: stream isBinary.
	stream sizeBuffer: 8