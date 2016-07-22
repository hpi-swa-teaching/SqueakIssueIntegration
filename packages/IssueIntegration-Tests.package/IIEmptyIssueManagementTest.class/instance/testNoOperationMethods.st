running
testNoOperationMethods
	| issue |
	issue := IIEmptyIssue new.
	self issueManagement 
		closeIssue: issue;
		createIssueWithTitle: '' body: '' assignee: '' labels: {};
		editIssue: issue assignee: '';
		editIssue: issue body: '';
		editIssue: issue labels: {};
		editIssue: issue title: '';
		editIssue: issue title: '' body: '' assignee: '' state: '';
		openIssueInWebBrowser: issue.
	"If we reach here, all methods are implemented."