initialize-release
testissueClassIsMeta
	| issueClassIsMeta |
	issueClassIsMeta := true.
	self subject model issueClassIsMeta: issueClassIsMeta.
	self assert: issueClassIsMeta equals: self subject model issueClassIsMeta
	
	