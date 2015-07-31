*IssueIntegration-UI-toolicon
toolIconSelector: aSymbol

        ((IssueManagement getIssueManagementFor: self theNonMetaClass packageInfo name) = '') ifFalse: [
 		(IssueManagement getMyIssuesForMethod: aSymbol class: self theNonMetaClass name isMeta: self isMeta package: ((self theNonMetaClass packageInfo)  name ) )
                isEmpty ifFalse: [ ^  #bugErrorIcon ].
            (IssueManagement getIssuesForMethod: aSymbol class: self theNonMetaClass name isMeta: self isMeta package: ((self theNonMetaClass packageInfo)  name ) )
                isEmpty ifFalse: [ ^ #bugIcon ]
        ] .

	^ super toolIconSelector: aSymbol