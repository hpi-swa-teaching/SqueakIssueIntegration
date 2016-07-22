running
testMyIssues
	"Do not test for issue title to be 'MethodIssue [class/method]' because this (how the method is stored) is an implementation specific detail (same for body)"
	| createdIssue |
	createdIssue := self issueManagement createIssueWithTitle: 'New Method Issue' body: 'test body method' assignee: 'frederike-ramin' labels: OrderedCollection new.
	self assert: (createdIssue assignee = 'frederike-ramin')