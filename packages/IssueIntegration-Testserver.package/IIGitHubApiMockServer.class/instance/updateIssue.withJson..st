functionalities
updateIssue: anIssue withJson: aJson
	aJson at: 'state' ifPresent: [ :state | anIssue at: 'state' put: state ].
	aJson at: 'title' ifPresent: [ :title | anIssue at: 'title' put: title ].
	aJson at: 'body' ifPresent: [ :body | anIssue at: 'body' put: body ].
	aJson at: 'assignee' ifPresent: [ :assignee | 
		anIssue at: 'assignee' put: (JsonObject with: 'login' -> assignee) ].
	aJson at: 'labels' ifPresent: [ :labelNames | | labelObjects |
		labelObjects := labelNames collect: [ :labelName | 
			self labels detect: [ :labelObject | 
				(labelObject at: 'name') = labelName ]].
		anIssue at: 'labels' put: labelObjects ]