*IssueIntegration-UI-icons
iconForClass: aClassNameSymbol 
	^ [ self
		issueIconForClass: aClassNameSymbol
		ifNoIssue: [ self originalIconForClass: aClassNameSymbol ]]
		on: Error
		do: [ :error | 
			Transcript showln: error.
			^ self originalIconForClass: aClassNameSymbol]