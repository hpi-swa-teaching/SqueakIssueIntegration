*ProjectXX-Core-context stack menu
issueContextStackMenu: aMenu
	<contextStackMenu>
	^ aMenu addList: #(
			('create Issue' createIssue)
			-);
		yourself.