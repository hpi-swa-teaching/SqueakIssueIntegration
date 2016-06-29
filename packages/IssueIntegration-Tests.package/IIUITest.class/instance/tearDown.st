as yet unclassified
tearDown
	super tearDown.
	self createdMorphs do: [:each | each delete]