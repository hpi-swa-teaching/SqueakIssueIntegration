*IssueIntegration-UI-message list menu
openClassIssueCreator

	| ui |
	ui := IssueCreator new.
	ui 
		methodName: '';
		packageName: self selectedSystemCategory; 
		issueClassName: self selectedClassName;
		issueClassIsMeta: self metaClassIndicated;
		openInWindow