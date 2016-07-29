instance creation
fromResponse: aWebResponse
	^ self fromJSON: (Json readFrom: aWebResponse content readStream)