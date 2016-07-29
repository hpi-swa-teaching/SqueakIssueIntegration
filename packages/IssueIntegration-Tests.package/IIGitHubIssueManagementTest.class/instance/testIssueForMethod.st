running
testIssueForMethod
	| createdIssue issues |
	createdIssue := self issueManagement createIssueWithTitle: 'New Method Issue' 
		body: 'test body method' 
		assignee: '' 
		labels: {}
		method: 'isEmpty' 
		class: 'Collection' 
		andIsMeta: false.
	self 
		assert: 'New Method Issue [Collection>>#isEmpty]' equals: createdIssue title;
		assert: 'test body method' equals: createdIssue body.

	issues := self issueManagement getIssuesForMethod: 'isEmpty' 
		class: 'Collection' 
		andIsMeta: false.
	self assert: 1 equals: issues size