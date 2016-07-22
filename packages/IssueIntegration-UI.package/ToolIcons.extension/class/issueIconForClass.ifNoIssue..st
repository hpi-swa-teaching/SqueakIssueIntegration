*IssueIntegration-UI-icons
issueIconForClass: aClassNameSymbol ifNoIssue: aBlock
	| packageName |	
	packageName := (Smalltalk classNamed: aClassNameSymbol) packageInfo name.
	(IIIssueManagement getMyIssuesForClass: aClassNameSymbol package: packageName) 
		ifNotEmpty: [ ^ #bugErrorIcon ].
      (IIIssueManagement getIssuesForClass: aClassNameSymbol package: packageName) 
		ifNotEmpty: [ ^ #bugIcon ].

	^ aBlock value.