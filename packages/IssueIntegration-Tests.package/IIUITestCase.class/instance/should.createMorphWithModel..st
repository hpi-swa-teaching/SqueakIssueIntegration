as yet unclassified
should: aBlock createMorphWithModel: aClass
	| morphs newMorph |
	morphs := self subject currentWorld submorphs.
	aBlock value.
	morphs := self subject currentWorld submorphs difference: morphs.
	morphs isEmpty ifTrue: [ morphs := self currentHand submorphs ].
	self assert: 1 equals: morphs size.
	newMorph := morphs first.
	self assert: (newMorph model isKindOf: aClass).
	self createdMorphs add: newMorph.
	^ newMorph.