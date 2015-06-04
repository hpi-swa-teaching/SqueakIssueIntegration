running
testIssueForMethod
	| issues |
	"
	issueManagement createIssueWithTitle: 'title1' AndBody: 'body'  ForMethod: 'm1' InPackage: 'package'.
	issueManagement createIssueWithTitle: 'title3' AndBody: 'body'  ForMethod: 'test' InPackage: 'package'.
	issueManagement createIssueWithTitle: 'title4' AndBody: 'body'  ForMethod: 'test'  InPackage: 'package'.
	issueManagement createIssueWithTitle: 'title2' AndBody: 'body'  ForMethod: 'm2' InPackage: 'package'.
"
	"Laeuft noch nicht, weil getIssuesForMethod noch nicht geht"
	issues := issueManagement getIssuesForMethod: 'test'.
	" do: [ :issue | Transcript show: issue title ]."