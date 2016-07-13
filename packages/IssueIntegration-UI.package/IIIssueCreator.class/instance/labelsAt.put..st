as yet unclassified
labelsAt: anInteger put: aBoolean
	self labelsSelected: (labelsSelected
		perform: (aBoolean ifTrue: [ #copyWith: ] ifFalse: [ #copyWithout: ])
		with: (labels at: anInteger ifAbsent: [ ^ self ]))

