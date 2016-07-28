requesting
errorForResponse: aResponse
	| errorMessage code |
	code := aResponse code.
	errorMessage := TextStream on: ''.
	errorMessage nextPutAll: code asString , ' - ' , (WebResponse statusCodeAt: code) asString.
	[ | json |
		json := Json readFrom: (ReadStream on: aResponse content).
		errorMessage nextPutAll: ' - ' , (json at: 'message' ifAbsent: ['']) ] 
		on: Error 
		do: [ "Seems like the GitHub API didn't even return valid json." ].
	errorMessage nextPutAll: ' | in ', thisContext sender.
	self error: errorMessage contents