running
testWindowWidget
	| windowWidget |
	windowWidget := SystemWindow new.
	self subject model windowWidget: windowWidget.
	self assert: windowWidget equals: self subject model windowWidget