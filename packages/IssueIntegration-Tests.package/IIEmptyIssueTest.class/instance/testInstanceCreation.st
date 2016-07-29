running
testInstanceCreation
	| emptyIssue |
	emptyIssue := IIEmptyIssue fromJson: self issue.
	self 
		assert: -1 equals: emptyIssue number;
		assert: emptyIssue title isEmpty;
		assert: emptyIssue body isEmpty;
		assert: emptyIssue assignee isEmpty;
		assert: emptyIssue labels isEmpty;
		assert: false equals: emptyIssue isValidIssue