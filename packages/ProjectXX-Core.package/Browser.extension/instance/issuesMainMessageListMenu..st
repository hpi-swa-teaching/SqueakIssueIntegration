*ProjectXX-Core-message list menu
issuesMainMessageListMenu: aMenu
	<messageListMenuShifted: false>
	^ aMenu addList: #(
			-
			('create Issue'                           openIssueCreator));
		yourself
