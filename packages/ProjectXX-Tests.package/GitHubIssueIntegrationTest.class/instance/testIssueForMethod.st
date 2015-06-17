running
testIssueForMethod
	"Do not test for issue title to be 'MethodIssue [class/method]' because this (how the method ist stored) is an implementation sepectific detail (same for body)"

	| createdIssue issues |

	createdIssue := issueManagement createIssueWithTitle: 'New Method Issue' AndBody: 'test body method' ForMethod:'class/method'.
	
	self assert: (createdIssue title includesSubString: 'New Method Issue').
	self assert: (createdIssue body includesSubString: 'test body method').

	issues := issueManagement getIssuesForMethod: 'class/method'.
	self assert: (issues anySatisfy: [ :issue | (issue title includesSubString: 'New Method Issue') and: [issue body includesSubString: 'test body method'] ]).