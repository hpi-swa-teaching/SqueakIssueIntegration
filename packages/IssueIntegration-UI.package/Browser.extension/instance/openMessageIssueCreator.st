*IssueIntegration-UI-message list menu
openMessageIssueCreator
	^ IssueCreator newWithMethodName: self selectedMessageName
		packageName: self selectedSystemCategory
		issueClassName: self selectedClassName
		issueClassIsMeta: self metaClassIndicated