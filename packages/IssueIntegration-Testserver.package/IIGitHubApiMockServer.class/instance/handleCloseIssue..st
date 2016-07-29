functionalities
handleCloseIssue: aWebRequest
	| number issue |
	(self checkOAuthToken: aWebRequest)
		ifFalse: [ ^ self notAValidOAuthToken: aWebRequest ].
	number := (aWebRequest url copyAfterLast: $/) asInteger.
	issue := self issues detect: [ :each | (each number) = number ].
	issue at: 'state' put: ((Json readFrom: (ReadStream on: aWebRequest content)) state).
	^ aWebRequest send200Response: (Json render: issue) 
		contentType: self contentType 
		do: self decorateResponseBlock 