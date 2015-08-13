private
patchForEncodePathFragment: string on: stream
	| encoder |
	encoder := ZnPercentEncoder new
		characterEncoder: (ZnCharacterEncoder newForEncoding: 'utf-8');
		safeSet: 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-_.~!$&''()*+,;=:@/?'.
	stream nextPutAll: (encoder encode: string)