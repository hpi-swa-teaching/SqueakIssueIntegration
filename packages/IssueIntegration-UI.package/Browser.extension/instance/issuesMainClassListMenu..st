*IssueIntegration-UI-message list menu
issuesMainClassListMenu: aMenu
	<classListMenuShifted: false>
	^ self editMenu: aMenu 
		withIssues: (IIIssueManagement 
			getIssuesForClass: self selectedClassName 
			andPackage: self selectedSystemCategory) 
		andSelector: #openClassIssueCreator