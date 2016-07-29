*IssueIntegration-UI-message list menu
issuesMainMessageListMenu: aMenu
	<messageListMenuShifted: false>
	^ self editMenu: aMenu 
		withIssues: (IIIssueManagement getIssuesForMethod: self selectedMessageName 
			class: self selectedClassName 
			isMeta: self metaClassIndicated 
			andPackage: self selectedSystemCategory) 
		andSelector: #openMessageIssueCreator