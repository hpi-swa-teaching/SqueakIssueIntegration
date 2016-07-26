running
testEditTitle
	| newTitle titleInput |
	newTitle := 'Test'.
	titleInput := self subject findByName: 'titleInput'.
	titleInput setText: newTitle.
	titleInput acceptTextInModel.
	self assert: newTitle equals: titleInput text string
	
	
	