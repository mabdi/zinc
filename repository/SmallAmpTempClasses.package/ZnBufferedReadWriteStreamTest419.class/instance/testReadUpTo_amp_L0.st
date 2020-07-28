as yet unclassified
testReadUpTo_amp_L0
	"I test correctness of: 

- `^ readStream size` in method: `ZnBufferedReadWriteStream >> #size`

- `^ readStream closed` in method: `ZnBufferedReadWriteStream >> #closed`

- `^ aBlock
	ensure: [ lastRead := false ]` in method: `ZnBufferedReadWriteStream >> #writingActionDo:` when {#lastRead->true}

- `^ false` in method: `ZnBufferedReadWriteStream >> #isReadOnly`

"

	<madeBySmallAmp>
	| stream |
	stream := ZnBufferedReadWriteStream on: '' readStream.
	self
		assert: stream size equals: 0;
		deny: stream closed;
		assert: stream setToEnd class equals: ZnBufferedWriteStream;
		deny: stream isReadOnly.
	stream sizeBuffer: 8