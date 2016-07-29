private
extractClassAndSelectorFromIssueTitle: aString
	| class isMeta selector indicator classAndSelector |
	indicator := (aString copyAfter: $[) copyUpTo: $].
		
	classAndSelector := indicator subStrings: self class classAndMethodSeparator.
	selector := classAndSelector at: 2 ifAbsent: [ '' ]. 
	classAndSelector at: 1 ifAbsent: [ ^ self error: 'Issue title does not match a class' ].
	class := classAndSelector first copyReplaceAll: self class metaClassIndicator with: ''.
	
	class := Smalltalk at: class asSymbol.
	isMeta := indicator includesSubString: self class metaClassIndicator.
	isMeta ifTrue: [ class := class class ].
	^ IdentityDictionary with: #class -> class with: #selector -> selector