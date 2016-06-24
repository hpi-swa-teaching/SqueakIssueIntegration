issue accessing
openIssueInBrowser: anIssue
	| class isMeta selector title tmp |
	title := anIssue title.
	title := (title copyAfter: $[) copyUpTo: $].
	
	isMeta := (title includesSubstring: self class metaClassIndicator) or: [title includesSubstring: self class metaClassAndMethodSeparator].
	
	tmp := title subStrings: self class classAndMethodSeparator.
	selector := tmp at: 2 ifAbsent: ['']. 
	class := tmp first copyReplaceAll: self class metaClassIndicator with: ''.
	
	class ifEmpty: [^ self error: 'Cannot find class for issue.']. 
	
	class := Smalltalk at: class asSymbol.
	isMeta ifTrue: [class := class class].  
	Browser fullOnClass: class selector: selector