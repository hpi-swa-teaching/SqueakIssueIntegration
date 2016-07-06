*IssueIntegration-UI-toolicon
toolIconSelector: aSymbol
	(IIIssueManagement getIssueManagementFor: self theNonMetaClass packageInfo name) hasValidRemote ifFalse: [ ^ super toolIconSelector: aSymbol ]. 
	
	(IIIssueManagement getMyIssuesForMethod: aSymbol class: self theNonMetaClass name isMeta: self isMeta package: self theNonMetaClass packageInfo name)
		ifNotEmpty: [ ^ #bugErrorIcon ].
	(IIIssueManagement getIssuesForMethod: aSymbol class: self theNonMetaClass name isMeta: self isMeta package: self theNonMetaClass packageInfo name)
		ifNotEmpty: [ ^ #bugIcon ].
		
	^ super toolIconSelector: aSymbol