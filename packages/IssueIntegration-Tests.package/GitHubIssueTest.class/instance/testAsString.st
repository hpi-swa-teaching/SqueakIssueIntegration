instance creation
testAsString
	| issue title |
	issue := GitHubIssue new.
	title := 'This is a title'.
	issue title: title.
	self assert: issue asString equals: title