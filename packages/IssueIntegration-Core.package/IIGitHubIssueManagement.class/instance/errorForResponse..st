error handling
errorForResponse: aResponse
	| errorMessage code json |
	code := aResponse code.
	errorMessage := code asString , ' - ' , (WebResponse statusCodeAt: code) asString.
	[ json := Json readFrom: (ReadStream on: aResponse content).
		errorMessage := errorMessage , ' ' , (json at: 'message' ifAbsent: ['']) ] on: Error do: [ "Seems like the GitHub API didn't even return valid json." ].
	errorMessage := errorMessage , ' | for project: ', self projectID, ' in ', thisContext sender.
	self error: errorMessage