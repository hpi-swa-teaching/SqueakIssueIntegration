test instance variables
testBody
	| issue |

	issue := Issue new.
	issue body: 'Test Body'.

	self assert: issue body equals: 'Test Body'