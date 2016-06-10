as yet unclassified
handleIssueList: aWebRequest
	^ aWebRequest send200Response: (Json render: self issues) contentType: 'application/json'