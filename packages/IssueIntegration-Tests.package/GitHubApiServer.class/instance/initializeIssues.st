as yet unclassified
initializeIssues
	self issues: OrderedCollection new.
	self issues add: (Json readFrom: (ReadStream on: self testIssue1)).
	self issues add: (Json readFrom: (ReadStream on: self testIssue2)).
	self issues add: (Json readFrom: (ReadStream on: self testIssue3))
	