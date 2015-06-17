running
testMyIssues
	"Do not test for issue title to be 'MethodIssue [class/method]' because this (how the method ist stored) is an implementation sepectific detail (same for body)"

	| createdIssue |

	createdIssue := issueManagement createIssueWithTitle: 'New Method Issue' AndBody: 'test body method' AndAssignee: 'nef10'.
	
Transcript show: '------------'.
Transcript show: createdIssue assignee.
	self assert: (createdIssue assignee = 'Nef10').