as yet unclassified
initializeLabels
	self labels: OrderedCollection new.
	self labels add: (Json readFrom: (ReadStream on: self testLabel1)).
	self labels add: (Json readFrom: (ReadStream on: self testLabel2)).
	self labels add: (Json readFrom: (ReadStream on: self testLabel3)).
	self labels add: (Json readFrom: (ReadStream on: self testLabel4)).
	self labels add: (Json readFrom: (ReadStream on: self testLabel5)).
	self labels add: (Json readFrom: (ReadStream on: self testLabel6))
	