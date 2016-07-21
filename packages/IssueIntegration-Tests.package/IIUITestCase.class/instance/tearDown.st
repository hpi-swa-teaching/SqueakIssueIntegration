initialize-release
tearDown
	super tearDown.
	self createdMorphs do: [ :each | each delete ]