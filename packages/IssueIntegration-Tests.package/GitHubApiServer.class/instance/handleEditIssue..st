as yet unclassified
handleEditIssue: aWebRequest
	| number issue |
	number := (aWebRequest url copyAfterLast: $/) asInteger.
	issue := self issues detect: [:each | (each at: 'number') = number].
	
	((Json readFrom: (ReadStream on: aWebRequest content)) at: 'state') ifNotNil: [
	issue at: 'state' put: ((Json readFrom: (ReadStream on: aWebRequest content)) at: 'state')].
	((Json readFrom: (ReadStream on: aWebRequest content)) at: 'title') ifNotNil: [
	issue at: 'title' put: ((Json readFrom: (ReadStream on: aWebRequest content)) at: 'title')].
	^ aWebRequest send200Response: (Json render: issue) contentType: 'application/json'