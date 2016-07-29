issue accessing
getIssuesForMethod: methodName class: aClass andIsMeta: aBoolean
	| separator |
	separator := self getSeperatorForIsMeta: aBoolean.
	^ self getIssues select: [ :issue | 
		issue title includesSubString: '[', aClass, separator, methodName, ']' ]