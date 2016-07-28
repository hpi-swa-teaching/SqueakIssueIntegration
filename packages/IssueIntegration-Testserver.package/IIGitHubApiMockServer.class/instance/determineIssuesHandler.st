initialize-release
determineIssuesHandler 
	^ [ :req | req isGetRequest 
		ifTrue: [ req url endsWithDigit 
			ifTrue: [ self handleIssueDisplay: req ] 
			ifFalse: [ self handleIssueList: req ]]
		ifFalse: [ req isPostRequest
			ifTrue: [ self handleIssueCreation: req ]
			ifFalse: [ self handleEditIssue: req ]]]