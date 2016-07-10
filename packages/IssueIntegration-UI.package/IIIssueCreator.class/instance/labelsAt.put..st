as yet unclassified
labelsAt: anInteger put: aBoolean
	labelsSelected := labelsSelected
		perform: (aBoolean ifTrue: [ #copyWith: ] ifFalse: [ #copyWithout: ])
		with: (labels at: anInteger ifAbsent: [ ^ self ]).
	self changed: #labelsSelected; updateClasses.
	