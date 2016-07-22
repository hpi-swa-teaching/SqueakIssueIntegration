as yet unclassified
handleIssueList: aWebRequest
	^ aWebRequest 
		send200Response: (Json render: (self issues select: [ :each | (each at: 'state') = 'open' ])) 
		contentType: 'application/json' 
		do: ((self checkOAuthToken: aWebRequest)
			ifTrue: [self decorateResponseBlock]
			ifFalse: [ [ :response | ] ])