*IssueIntegration-UI-message list menu
openMessageIssueCreator
	^ IIIssueCreator newWithMethodName: self selectedMessageName
		packageName: self selectedSystemCategory
		issueClassName: self selectedClassName
		issueClassIsMeta: self metaClassIndicated