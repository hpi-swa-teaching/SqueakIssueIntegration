*IssueIntegration-UI-icons
iconForClass: aClassNameSymbol
	^ self issueIconForClass: aClassNameSymbol ifNotEnabled: [ self environment
        	at: aClassNameSymbol
        	ifPresent: [:global | 
            	(global respondsTo: #toolIcon) ifTrue: [ ^ global toolIcon]]
        	ifAbsent: [^ #blank].
    		^ #blank]. 