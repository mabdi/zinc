testing
testImage
	self assert: ZnUrl image isFile.
	self assert: ZnUrl image isFilePath.
	self deny: ZnUrl image isHttps.
	self assert: ZnUrl image isRelative.
	self deny: ZnUrl image isHttp