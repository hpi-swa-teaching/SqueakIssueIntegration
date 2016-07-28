user interface signals
labelsAt: anInteger put: aBoolean
	| label |
	label := self labels at: anInteger ifAbsent: [ ^ self ].
	self labelsSelected: (aBoolean 
		ifTrue: [ self labelsSelected copyWith: label ] 
		ifFalse: [ self labelsSelected labels copyWithout: label ])

