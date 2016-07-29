requesting
errorForResponse: aResponse
	| errorMessage code |
	code := aResponse code.
	errorMessage := TextStream on: ''.
	errorMessage nextPutAll: code asString, ' - ', (WebResponse statusCodeAt: code).
	errorMessage nextPutAll: (self extractErrorMessageFromJson: aResponse).
	errorMessage nextPutAll: ' | in ', thisContext sender.
	self error: errorMessage contents