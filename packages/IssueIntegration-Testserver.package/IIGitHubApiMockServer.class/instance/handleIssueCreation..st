functionalities
handleIssueCreation: aWebRequest
	| issue content |
	(self checkOAuthToken: aWebRequest) 
		ifFalse: [ ^ self notAValidOAuthToken: aWebRequest ].
	content := Json readFrom: aWebRequest content readStream.
	issue := self addIssueFrom: content.
 	^ aWebRequest sendResponseCode: 201
		content: (Json render: issue) 
		type: self contentType
		do: self decorateResponseBlock