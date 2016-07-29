running
testIssueListMenu
	| menu |
	menu := self subject model issueListMenu: MenuMorph new.
	self 
		assert: self subject model equals: menu lastItem target;
		assert: 'close' equals: menu lastItem contents;
		assert: #closeIssue equals: menu lastItem selector