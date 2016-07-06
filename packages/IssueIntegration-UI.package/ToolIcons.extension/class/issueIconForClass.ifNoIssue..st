*IssueIntegration-UI-icons
issueIconForClass: aClassNameSymbol ifNoIssue: aBlock
	| issueManagement packageName |	
	packageName := (Smalltalk classNamed: aClassNameSymbol) packageInfo name.
	issueManagement := IIIssueManagement getIssueManagementFor: packageName.

	issueManagement hasValidRemote ifFalse: [ ^ aBlock value ].
	(issueManagement getMyIssuesForClass: aClassNameSymbol) ifNotEmpty: [ ^ #bugErrorIcon ].
      (issueManagement getIssuesForClass: aClassNameSymbol) ifNotEmpty: [ ^ #bugIcon ].

	^ aBlock value.