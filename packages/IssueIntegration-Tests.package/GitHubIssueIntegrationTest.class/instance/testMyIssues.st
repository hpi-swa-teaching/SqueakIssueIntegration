running
testMyIssues
	"Do not test for issue title to be 'MethodIssue [class/method]' because this (how the method ist stored) is an implementation sepectific detail (same for body)"

	| createdIssue |

	createdIssue := issueManagement createIssueWithTitle: 'New Method Issue' body: 'test body method' assignee: 'frederike-ramin'.
	
	self assert: (createdIssue assignee = 'frederike-ramin')