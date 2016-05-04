*IssueIntegration-UI-icons
issueIconForClass: aClassNameSymbol ifNoIssue: aBlock
	| issueManagement packageName |
	
	packageName := ((PackageInfo allPackages detect: [:p | p includesClassNamed: aClassNameSymbol asString]) name).
	issueManagement := IssueManagement getIssueManagementFor: packageName.
	Transcript show: packageName.
	
	(issueManagement = '') ifTrue: [ ^ aBlock value ].
	(issueManagement getMyIssuesForClass: aClassNameSymbol) ifNotEmpty: [ ^ #bugErrorIcon ].
      (issueManagement getIssuesForClass: aClassNameSymbol) ifNotEmpty: [ ^ #bugIcon ].

	^ aBlock value.