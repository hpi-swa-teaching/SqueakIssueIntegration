initialize-release
testEditBody
	| newBody bodyInput |
	newBody := 'Test'.
	bodyInput := self subject findByName: 'bodyInput'.
	bodyInput setText: newBody.
	bodyInput acceptTextInModel.
	self assert: newBody equals: bodyInput text string
	
	
	