*IssueIntegration-UI-message list menu
editMenu: aMenu withIssues: someIssues andSelector: aSelector
	| issueMenu issueManagement |
 	issueManagement := IIIssueManagement getIssueManagementFor: self selectedSystemCategory.
    	issueManagement hasValidRemote ifFalse: [ ^ aMenu ].
	aMenu add: 'create Issue' target: self action: aSelector.
	issueMenu := self createMenusForIssues: someIssues.
	someIssues ifNotEmpty: [ aMenu add: 'active Issues' subMenu: issueMenu ].		
	
	^ aMenu 
		addList: #(	-);
		yourself