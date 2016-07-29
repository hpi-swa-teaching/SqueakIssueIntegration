*IssueIntegration-UI-message list menu
createMenusForIssues: someIssues
	| issuesMenu |
	issuesMenu := MenuMorph new.
	someIssues do: [ :issue | | issueMenu |
		issueMenu := MenuMorph new.
		issueMenu add: 'close' target: self selector: #closeIssue: argument: issue.
		issueMenu add: 'show' target: self selector: #openInIssueBrowserWithIssue:andPackage:
			argumentList: (Array with: issue with: self selectedSystemCategory).
		issuesMenu add: issue title subMenu: issueMenu ].
	^ issuesMenu