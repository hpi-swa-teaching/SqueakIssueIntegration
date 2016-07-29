running
testIssueForMethod
	"Do not test for issue title to be 'MethodIssue [class/method]' because this (how the method ist stored) is an implementation specific detail (same for body)"
	| createdIssue issues |
	createdIssue := self issueManagement createIssueWithTitle: 'New Method Issue' body: 'test body method' assignee: '' labels: OrderedCollection new method: 'method' class: 'class' andIsMeta: false.
	Transcript show: createdIssue.
	self assert: (createdIssue title includesSubString: 'New Method Issue').
	self assert: (createdIssue body includesSubString: 'test body method').

	issues := self issueManagement getIssuesForMethod: 'method' class: 'class' andIsMeta: false.
	self assert: (issues anySatisfy: [ :issue | (issue title includesSubString: 'New Method Issue') and: [ issue body includesSubString: 'test body method' ]])