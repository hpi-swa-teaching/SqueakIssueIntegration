*IssueIntegration-UI-toolicon
toolIconSelector: aSymbol	
	(IIIssueManagement getMyIssuesForMethod: aSymbol class: self theNonMetaClass name isMeta: self isMeta andPackage: self theNonMetaClass packageInfo name)
		ifNotEmpty: [ ^ #bugErrorIcon ].
	(IIIssueManagement getIssuesForMethod: aSymbol class: self theNonMetaClass name isMeta: self isMeta andPackage: self theNonMetaClass packageInfo name)
		ifNotEmpty: [ ^ #bugIcon ].
		
	^ super toolIconSelector: aSymbol