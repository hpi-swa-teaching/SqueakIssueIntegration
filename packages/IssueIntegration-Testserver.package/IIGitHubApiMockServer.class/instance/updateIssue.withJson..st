functionalities
updateIssue: anIssue withJson: aJson
	aJson 
		at: 'state' ifPresent: [ :state | anIssue at: 'state' put: state ];
		at: 'title' ifPresent: [ :title | anIssue at: 'title' put: title ];
		at: 'body' ifPresent: [ :body | anIssue at: 'body' put: body ];
		at: 'assignee' ifPresent: [ :assignee | 
			anIssue at: 'assignee' put: (JsonObject with: 'login' -> assignee) ];
		at: 'labels' ifPresent: [ :labelNames | | labelObjects |
			labelObjects := labelNames collect: [ :labelName | 
				self labels detect: [ :labelObject | 
					labelObject name = labelName ]].
			anIssue at: 'labels' put: labelObjects ]