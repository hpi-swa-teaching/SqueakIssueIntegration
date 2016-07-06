user interface signals
body
	selectedIssue body 
		ifNil: [^ body
			ifNil: ['']
			ifNotNil: [body]]
		ifNotNil: [^ selectedIssue body]