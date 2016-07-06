*IssueIntegration-UI-message list menu
openClassIssueCreator
	^ IIIssueCreator newWithMethodName: ''
		packageName: self selectedSystemCategory
		issueClassName: self selectedClassName
		issueClassIsMeta: self metaClassIndicated