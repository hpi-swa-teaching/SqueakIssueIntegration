instance variables
testTitle
	| issue |

	issue := Issue new.
	issue title: 'Title'.

	self assert: issue title equals: 'Title'