running
testHandleLabelList
	| response |
	response := self requestForMethod: #handleLabelList: andPath: '/labels'.
	self assert: 2 equals: (Json readFrom: (ReadStream on: response)) size. 