*IssueIntegration-UI-message list menu
openMessageIssueCreator

	| ui |
	ui := IssueCreator new.
	ui
		methodName: self selectedMessageName;
		packageName: self selectedSystemCategory;
		issueClassName: self selectedClassName;
		issueClassIsMeta: self metaClassIndicated;
		openInWindow.