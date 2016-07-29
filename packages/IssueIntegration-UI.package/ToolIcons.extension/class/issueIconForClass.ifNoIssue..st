*IssueIntegration-UI-icons
issueIconForClass: aClassNameSymbol ifNoIssue: aBlock
	| packageName |	
	packageName := (Smalltalk classNamed: aClassNameSymbol) packageInfo name.
	(IIIssueManagement getMyIssuesForClass: aClassNameSymbol andPackage: packageName) 
		ifNotEmpty: [ ^ #bugErrorIcon ].
      (IIIssueManagement getIssuesForClass: aClassNameSymbol andPackage: packageName) 
		ifNotEmpty: [ ^ #bugIcon ].

	^ aBlock value.