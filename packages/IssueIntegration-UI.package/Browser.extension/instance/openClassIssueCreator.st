*IssueIntegration-UI-message list menu
openClassIssueCreator

	| ui |

	ui := IssueCreator new.
	ui methodName: ''.
	ui packageName: self selectedSystemCategory. 
	ui issueClassName: self selectedClassName.
	ui issueClassIsMeta: self metaClassIndicated.
	ui openInWindow