private
extractClassAndSelectorFromIssueTitle: aString
	| class isMeta selector title classAndSelector |
	title := (aString copyAfter: $[) copyUpTo: $].
	
	isMeta := (title includesSubString: self class metaClassIndicator) or: [title includesSubstring: self class metaClassAndMethodSeparator].
	
	classAndSelector := title subStrings: self class classAndMethodSeparator.
	selector := classAndSelector at: 2 ifAbsent: ['']. 
	classAndSelector at: 1 ifAbsent: [^ self error: 'Issue title does not match a class.'].
	class := classAndSelector first copyReplaceAll: self class metaClassIndicator with: ''.
	
	class := Smalltalk at: class asSymbol.
	isMeta ifTrue: [class := class class].
	
	^ Dictionary with: #class -> class with: #selector -> selector.