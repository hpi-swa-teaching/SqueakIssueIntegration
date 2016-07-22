running
testIssueListMenu
	| menu |
	menu := MenuMorph new.
	menu := self subject model issueListMenu: menu.
	self assert: self subject model equals: menu lastItem target.
	self assert: 'close' equals: menu lastItem contents.
	self assert: #closeIssue equals: menu lastItem selector.