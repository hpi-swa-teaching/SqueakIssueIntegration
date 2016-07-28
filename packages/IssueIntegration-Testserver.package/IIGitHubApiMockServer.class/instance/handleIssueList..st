functionalities
handleIssueList: aWebRequest
	^ aWebRequest 
		send200Response: (Json render: (self issues select: [ :each | (each at: 'state') = 'open' ])) 
		contentType: self contentType
		do: (self decoratorFor: aWebRequest)