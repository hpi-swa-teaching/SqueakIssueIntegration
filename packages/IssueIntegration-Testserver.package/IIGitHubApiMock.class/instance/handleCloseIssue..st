as yet unclassified
handleCloseIssue: aWebRequest
	| number issue |
	number := (aWebRequest url copyAfterLast: $/) asInteger.
	issue := self issues detect: [:each | (each at: 'number') = number].
	issue at: 'state' put: ((Json readFrom: (ReadStream on: aWebRequest content)) at: 'state').
	^ aWebRequest send200Response: (Json render: issue) contentType: 'application/json'