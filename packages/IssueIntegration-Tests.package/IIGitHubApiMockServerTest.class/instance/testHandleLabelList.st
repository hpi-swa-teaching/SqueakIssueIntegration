running
testHandleLabelList
	| response |
	response := self requestForMethod: #handleLabelList: andPath: '/labels' requestBlock: [ :req | ].
	self assert: 2 equals: ((Json readFrom: (ReadStream on: response))) size. 