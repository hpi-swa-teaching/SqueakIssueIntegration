external
testOpenInWebBrowser
	| issue |
	issue := IIIssue new.
	self should: [ self issueManagement openIssueInWebBrowser: issue] raise: SubclassResponsibility