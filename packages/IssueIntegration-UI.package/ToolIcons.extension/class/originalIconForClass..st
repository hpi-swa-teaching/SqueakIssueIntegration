*IssueIntegration-UI-icons
originalIconForClass: aClassNameSymbol
	self environment
        	at: aClassNameSymbol
        	ifPresent: [ :global | (global respondsTo: #toolIcon) ifTrue: [ ^ global toolIcon ]]
        	ifAbsent: [ ^ #blank ].
    		^ #blank