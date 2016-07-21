as yet unclassified
handleEditIssue: aWebRequest
	| number issue parsedJSON labelObjects |
	number := (aWebRequest url copyAfterLast: $/) asInteger.
	issue := self issues detect: [ :each | (each at: 'number') = number ].
	parsedJSON := Json readFrom: aWebRequest content readStream.
	(parsedJSON at: 'state') ifNotNil: [
		issue at: 'state' put: (parsedJSON at: 'state') ].
	(parsedJSON at: 'title') ifNotNil: [
		issue at: 'title' put: (parsedJSON at: 'title') ].
	(parsedJSON at: 'body') ifNotNil: [
		issue at: 'body' put: (parsedJSON at: 'body') ].
	(parsedJSON at: 'assignee') ifNotNil: [
		(issue at: 'assignee') at: 'login' put: (parsedJSON at: 'assignee') ].
	(parsedJSON at: 'labels') ifNotNil: [
		labelObjects := (parsedJSON at: 'labels') collect: [ :labelName | 
			self labels detect: [ :labelObject | 
				(labelObject at: 'name') = labelName ]].
		issue at: 'labels' put: labelObjects ].
	^ aWebRequest send200Response: (Json render: issue) contentType: 'application/json'