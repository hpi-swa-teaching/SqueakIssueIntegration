as yet unclassified
handleEditIssue: aWebRequest
	| number issue parsedJSON |
	number := (aWebRequest url copyAfterLast: $/) asInteger.
	issue := self issues detect: [:each | (each at: 'number') = number].
	parsedJSON := Json readFrom: (ReadStream on: aWebRequest content).
	(parsedJSON at: 'state') ifNotNil: [
		issue at: 'state' put: (parsedJSON at: 'state')].
	(parsedJSON at: 'title') ifNotNil: [
		issue at: 'title' put: (parsedJSON at: 'title')].
	(parsedJSON at: 'body') ifNotNil: [
		issue at: 'body' put: (parsedJSON at: 'body')].
	(parsedJSON at: 'assignee') ifNotNil: [
		(issue at: 'assignee') at: 'login' put: (parsedJSON at: 'assignee')].
	^ aWebRequest send200Response: (Json render: issue) contentType: 'application/json'