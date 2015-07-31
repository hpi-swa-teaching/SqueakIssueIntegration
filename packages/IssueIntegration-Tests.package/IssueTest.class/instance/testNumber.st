test instance variables
testNumber
	| issue |

	issue := Issue new.
	issue number: 42.

	self assert: issue number equals: 42