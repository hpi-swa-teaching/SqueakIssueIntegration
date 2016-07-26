running
testMethodName
	| methodName |
	methodName := 'aMethod'.
	self subject model methodName: methodName.
	self assert: methodName equals: self subject model methodName
	
	