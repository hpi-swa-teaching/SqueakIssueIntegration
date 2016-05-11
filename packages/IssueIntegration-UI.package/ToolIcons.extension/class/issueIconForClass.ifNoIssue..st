*IssueIntegration-UI-icons
issueIconForClass: aClassNameSymbol ifNoIssue: aBlock
	| issueManagement packageName |
	
	packageName := (Smalltalk classNamed: aClassNameSymbol) packageInfo name.
	issueManagement := IssueManagement getIssueManagementFor: packageName.

	(issueManagement = '') ifTrue: [ ^ aBlock value ].
	(issueManagement getMyIssuesForClass: aClassNameSymbol) ifNotEmpty: [ ^ #bugErrorIcon ].
      (issueManagement getIssuesForClass: aClassNameSymbol) ifNotEmpty: [ ^ #bugIcon ].

	^ aBlock value.