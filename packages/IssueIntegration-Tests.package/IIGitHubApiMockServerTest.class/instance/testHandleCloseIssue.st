as yet unclassified
testHandleCloseIssue
	| response |
	self assert: 3 equals: self apiServer issues size.
	response := self requestForMethod: #handleCloseIssue: andPath: '/issues/1' requestBlock: [ :req | req content:  '{"state":"closed"}' ].
	self assert: 2 equals: (self apiServer issues select: [ :issue | (issue at: 'state') = 'open' ]) size.