*ProjectXX-Core-toolIcon
toolIconSelector: aSymbol
	"Tools can annotate the method identified by aSymbol with an icon identified by the symbol this method returns.
	We customize this for, eg, overriden methods or methods with breaks.
	Defaults to no icon"

	self methodDictionary at: aSymbol ifPresent: [ :method |
		method hasBreakpoint ifTrue: [^ #breakpoint].
		method literalsDo: [:literal |
			(#(halt halt: haltIfNil haltIf: haltOnce haltOnce: haltOnCount: halt:onCount: break) includes: literal)
				ifTrue: [^ #breakpoint].
			(#(flag: needsWork notYetImplemented) includes: literal)
				ifTrue: [^ #flag].
			(#(shouldBeImplemented subclassResponsibility) includes: literal)
				ifTrue: [
					(self isSelectorOverridden: aSymbol)
						ifTrue: [^ #abstract]
						ifFalse: [^ #notOverridden]].
			literal == #shouldNotImplement
				ifTrue: [^ #no]].
		method hasReportableSlip ifTrue: [^ #breakpoint].

        ((IssueManagement getIssueManagementFor: self theNonMetaClass packageInfo name) = '') ifFalse: [
            (IssueManagement getIssuesForMethod: aSymbol class: self theNonMetaClass name isMeta: self isMeta package: ((self theNonMetaClass packageInfo)  name ) )
                isEmpty ifFalse: [
                    ^ #bugIcon   
                ]
        ] 
].

		
	(self isSelectorOverride: aSymbol)
		ifTrue: [
			(self isSelectorOverridden: aSymbol)
				ifTrue: [ ^ #arrowUpAndDown ]
				ifFalse: [ ^ #arrowUp ] ]
		ifFalse: [
			(self isSelectorOverridden: aSymbol)
				ifTrue: [^ #arrowDown ]].

	self methodDictionary at: aSymbol ifPresent: [ :method |
		(method primitive ~= 0 and: [method isQuick not])
			ifTrue: [^ #primitive]].
	

	^ #blank