instance creation
fromResponse: aWebResponse
	^ self fromJson: (Json readFrom: aWebResponse content readStream)