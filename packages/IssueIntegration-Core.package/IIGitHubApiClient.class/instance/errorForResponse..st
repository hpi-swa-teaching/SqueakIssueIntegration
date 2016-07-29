requesting
errorForResponse: aResponse
	| code |
	code := aResponse code.
	self error: ('' writeStream
		nextPutAll: code asString, ' - ', (WebResponse statusCodeAt: code);
		nextPutAll: (self extractErrorMessageFromJson: aResponse);
		nextPutAll: ' | in ', thisContext sender;
		contents)