as yet unclassified
testInstanceVariables
	| issue |

	issue := Issue new.
	issue number: 42.
	issue title: 'Title'.
	issue body: 'Test Body'.

	self assert: issue number equals: 42.
	self assert: issue title equals: 'Title'.
	self assert: issue body equals: 'Test Body'.  