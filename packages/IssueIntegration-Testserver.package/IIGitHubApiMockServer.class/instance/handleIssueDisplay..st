functionalities
handleIssueDisplay: aWebRequest
	| number |
	number := (aWebRequest url copyAfterLast: $/) asInteger.
	^ aWebRequest 
		send200Response: (Json render: (self issues detect: [ :each | each number = number ])) 
		contentType: self contentType
		do: (self decoratorFor: aWebRequest)