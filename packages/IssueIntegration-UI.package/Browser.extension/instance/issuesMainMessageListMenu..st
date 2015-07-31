*IssueIntegration-UI-message list menu
issuesMainMessageListMenu: aMenu
	<messageListMenuShifted: false>
	| issueMenu issueEditMenu openIssuesList issueManagement|

 	issueManagement := (IssueManagement getIssueManagementFor: selectedSystemCategory).
    
	aMenu addList: #(-
					('create Issue'				openIssueCreator)
					).
	
	issueMenu := MenuMorph new.
	openIssuesList := IssueManagement getIssuesForMethod: selectedMessageName class: selectedClassName isMeta: metaClassIndicated package: selectedSystemCategory.
	openIssuesList do: [ :issue |
				issueEditMenu := MenuMorph new.
				issueEditMenu add: ('close ') target: self selector: #closeIssue: argument: issue.
				issueEditMenu add: ('edit ') target: self selector: #openInWebbrowser: argument: issue.
				issueMenu add: (issue title) subMenu: issueEditMenu.
				].
	openIssuesList ifNotEmpty: [aMenu add: 'active Issues' subMenu: issueMenu].
	
	^ aMenu addList: #(	-);
		yourself