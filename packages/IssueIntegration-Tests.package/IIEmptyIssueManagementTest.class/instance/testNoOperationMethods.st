running
testNoOperationMethods
	| issue |
	issue := IIEmptyIssue new.
	self issueManagement 
		closeIssue: issue;
		createIssueWithTitle: '' body: '' assignee: '' andLabels: {};
		editIssue: issue assignee: '';
		editIssue: issue body: '';
		editIssue: issue labels: {};
		editIssue: issue title: ''
	"If we reach here, everything is implemented"