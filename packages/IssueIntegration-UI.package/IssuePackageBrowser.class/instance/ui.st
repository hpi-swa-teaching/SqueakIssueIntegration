accessing
ui

	^ ui ifNil: [ui := IssuePackageBrowserUi new]