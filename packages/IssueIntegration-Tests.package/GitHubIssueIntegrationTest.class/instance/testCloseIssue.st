running
testCloseIssue

	| issue issueSet |

	issue := issueManagement createIssueWithTitle: 'testCloseIssue' body: 'test body' assignee: 'Nef10'.
	issueManagement closeIssue: issue.
	issueSet := issueManagement getIssues.
	self assert:((issueSet anySatisfy: [ :i | i number = issue number]) not)