initialize-release
initializeLabels
	self labels: OrderedCollection new.
	self labels add: (Json readFrom: (ReadStream on: self testLabel1)).
	self labels add: (Json readFrom: (ReadStream on: self testLabel2))
	