as yet unclassified
testDecodePercent_amp
	"I test correctness of: 

- `^ 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-_.~!$&''()*+,;=:@/?'` in method: `ZnResourceMetaUtils class >> #querySafeSet`

- `^ ZnPercentEncoder rfc3986UnreservedCharacters` in method: `ZnResourceMetaUtils class >> #rfc3986SafeSet`

- `^ 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-_.~!$&''()*+,;=:@'` in method: `ZnResourceMetaUtils class >> #urlPathSafeSet`

"

	<madeBySmallAmp>
	ZnResourceMetaUtils decodePercent: 'foo%20bar'.
	self
		assert: ZnResourceMetaUtils querySafeSet
			equals:
			'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-_.~!$&''()*+,;=:@/?';
		assert: ZnResourceMetaUtils rfc3986SafeSet
			equals: 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-_.~';
		assert: ZnResourceMetaUtils urlPathSafeSet
			equals:
			'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-_.~!$&''()*+,;=:@'