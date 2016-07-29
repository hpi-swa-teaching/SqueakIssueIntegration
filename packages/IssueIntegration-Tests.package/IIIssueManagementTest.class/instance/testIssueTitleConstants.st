running
testIssueTitleConstants
	"This test might look 'dumb' at first glance, but is here to make sure backwards
	 compatibility is maintained and the constants aren't changed."
	self 
		assert: '>>#' equals: self issueManagement class classAndMethodSeparator;
		assert: ' class' equals: self issueManagement class metaClassIndicator;
		assert: ' class>>#' equals: self issueManagement class metaClassAndMethodSeparator