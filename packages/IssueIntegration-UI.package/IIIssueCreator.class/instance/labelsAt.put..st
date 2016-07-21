as yet unclassified
labelsAt: anInteger put: aBoolean
	self labelsSelected: (self labelsSelected
		perform: (aBoolean ifTrue: [ #copyWith: ] ifFalse: [ #copyWithout: ])
		with: (self labels at: anInteger ifAbsent: [ ^ self ]))

