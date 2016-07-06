as yet unclassified
should: aBlock createMorphWithModel: aClass
	| morphs |
	morphs := self subject currentWorld submorphs.
	aBlock value.
	morphs := self subject currentWorld submorphs difference: morphs.
	self assert: 1 equals: morphs size.
	self assert: (morphs first model isKindOf: aClass).
	self createdMorphs add: morphs first