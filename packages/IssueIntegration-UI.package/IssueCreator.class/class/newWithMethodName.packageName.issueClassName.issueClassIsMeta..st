as yet unclassified
newWithMethodName: aMethodName packageName: aPackageName issueClassName: aClassName  issueClassIsMeta: aBoolean
	| instance |
	
	instance := self new
		methodName: aMethodName;
		packageName: aPackageName;
		issueClassName: aClassName;
		issueClassIsMeta: aBoolean.
	^ ToolBuilder open: instance