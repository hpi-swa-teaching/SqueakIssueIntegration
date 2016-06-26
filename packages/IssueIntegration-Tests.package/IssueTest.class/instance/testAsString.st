instance variables
testAsString
	| issue title |
	issue := Issue new.
	title := 'This is a title'.
	issue title: title.
	self assert: issue asString equals: title