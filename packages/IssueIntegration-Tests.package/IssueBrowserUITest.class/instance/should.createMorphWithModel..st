as yet unclassified
should: aBlock createMorphWithModel: aClass
	| morphs identityDifference |
	identityDifference := [:a :b | a reject: [:each | b includes: each]. a].
	
	morphs := self subject currentWorld submorphs.
	aBlock value.
	"morphs := identityDifference value: self subject currentWorld submorphs value: morphs."
	morphs := self subject currentWorld submorphs difference: morphs.
	self assert: 1 equals: morphs size.
	self assert: (morphs first model isKindOf: aClass).
	morphs first delete.