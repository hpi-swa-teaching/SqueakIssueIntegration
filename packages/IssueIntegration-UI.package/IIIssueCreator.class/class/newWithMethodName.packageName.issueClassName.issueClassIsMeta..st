class initialization
newWithMethodName: aMethodName packageName: aPackageName issueClassName: aClassName  issueClassIsMeta: aBoolean
	^ ToolBuilder open: (self new
		methodName: aMethodName;
		packageName: aPackageName;
		issueClassName: aClassName;
		issueClassIsMeta: aBoolean)