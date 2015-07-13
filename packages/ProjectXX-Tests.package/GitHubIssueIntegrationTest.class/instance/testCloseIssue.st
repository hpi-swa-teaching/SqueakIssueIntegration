running
testCloseIssue

|issue issueSet|

issue:= issueManagement createIssueWithTitle: 'testCloseIssue' body: 'test body' assignee: 'Nef10'.
issueManagement closeIssue: issue.
issueSet:= issueManagement getIssues.
self assert: ((issueSet includes: (issue number)) not)