functionalities
handleIssueDisplay: aWebRequest
	| number |
	number := (aWebRequest url copyAfterLast: $/) asInteger.
	^ aWebRequest 
		send200Response: (Json render: (self issues detect: [ :each | (each at: 'number') = number ])) 
		contentType: self contentType
		do: (self decoratorFor: aWebRequest)