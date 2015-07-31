running
testIssueForMethod
	"Do not test for issue title to be 'MethodIssue [class/method]' because this (how the method ist stored) is an implementation sepectific detail (same for body)"

	| createdIssue issues |

	createdIssue := issueManagement createIssueWithTitle: 'New Method Issue' body: 'test body method' method:'method' class:'class' isMeta: false assignee:''.
	Transcript show: createdIssue.
	self assert: (createdIssue title includesSubString: 'New Method Issue').
	self assert: (createdIssue body includesSubString: 'test body method').

	issues := issueManagement getIssuesForMethod: 'method' class: 'class' isMeta: false.
	self assert: (issues anySatisfy: [ :issue | (issue title includesSubString: 'New Method Issue') and: [issue body includesSubString: 'test body method'] ]).