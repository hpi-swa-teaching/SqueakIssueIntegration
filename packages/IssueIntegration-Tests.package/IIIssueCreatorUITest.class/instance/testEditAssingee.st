initialize-release
testEditAssingee
	| newAssingee assingeeInput |
	newAssingee := 'Test'.
	assingeeInput := self subject findByName: 'assingeeInput'.
	assingeeInput setText: newAssingee.
	assingeeInput acceptTextInModel.
	self assert: newAssingee equals: assingeeInput text string
	
	
	