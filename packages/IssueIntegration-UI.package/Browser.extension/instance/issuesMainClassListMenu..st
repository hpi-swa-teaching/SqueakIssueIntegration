*IssueIntegration-UI-message list menu
issuesMainClassListMenu: aMenu
	<classListMenuShifted: false>
	| issueMenu issueEditMenu openIssuesList issueManagement argumentList |
 	issueManagement := IIIssueManagement getIssueManagementFor: self selectedSystemCategory.
    	issueManagement hasValidRemote ifTrue: [
		aMenu addList: #(-
					('create Issue'	openClassIssueCreator)
					).
	
		issueMenu := MenuMorph new.
		openIssuesList := IIIssueManagement getIssuesForClass: self selectedClassName package: self selectedSystemCategory.
		openIssuesList do: [ :issue |
					issueEditMenu := MenuMorph new.
					issueEditMenu add: ('close ') target: self selector: #closeIssue: argument: issue.
					argumentList := Array with: issue with: self selectedSystemCategory.
					issueEditMenu add: ('show ') target: self selector: #openInIssueBrowserWithIssue:andPackage: argumentList: argumentList.
					issueMenu add: issue title subMenu: issueEditMenu ].
		openIssuesList ifNotEmpty: [ aMenu add: 'active Issues' subMenu: issueMenu ].
	
		^ aMenu addList: #(	-);
			yourself
	].
	^ aMenu