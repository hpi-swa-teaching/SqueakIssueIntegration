constants
testIssueTitleConstants
	"This test might look 'dumb' at first glance, but is here to make sure backwards
	 compatibility is maintained and the constants aren't changed."
	self assert: '>>#' equals: self issueManagement class classAndMethodSeparator.
	self assert: ' class' equals: self issueManagement class metaClassIndicator.
	self assert: ' class>>#' equals: self issueManagement class metaClassAndMethodSeparator.