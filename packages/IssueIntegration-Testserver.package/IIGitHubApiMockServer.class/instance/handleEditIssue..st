functionalities
handleEditIssue: aWebRequest
	| number issue parsedJson |
	(self checkOAuthToken: aWebRequest)
		ifFalse: [ ^ self notAValidOAuthToken: aWebRequest ].
	number := (aWebRequest url copyAfterLast: $/) asInteger.
	issue := self issues detect: [ :each | (each at: 'number') = number ].
	parsedJson := Json readFrom: aWebRequest content readStream.
	self updateIssue: issue withJson: parsedJson.
	^ aWebRequest send200Response: (Json render: issue) 
		contentType: self contentType 
		do: self decorateResponseBlock