as yet unclassified
initializeLabels
	self labels: Set new.
	self labels add: (Json readFrom: (ReadStream on: self testLabel1)).
	self labels add: (Json readFrom: (ReadStream on: self testLabel2))
	