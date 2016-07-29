running
testExtractClassAndSelectorFromIssueTitle
	| title result |
	title := 'Testissue'.
	self should: [ self issueManagement extractClassAndSelectorFromIssueTitle: title ] 
		raise: Error.
	title := 'Testissue []'.
	self should: [ self issueManagement extractClassAndSelectorFromIssueTitle: title ] 
		raise: Error.
	title := ''.
	self should: [ self issueManagement extractClassAndSelectorFromIssueTitle: title ] 
		raise: Error.

	title := 'Collection Test [Collection]'.
	result := self issueManagement extractClassAndSelectorFromIssueTitle: title.
	self 
		assert: (result at: #class) equals: Collection;
		assert: (result at: #selector) equals: ''.
	
	title := 'Collection Test [Collection class]'.
	result := self issueManagement extractClassAndSelectorFromIssueTitle: title.
	self 
		assert: (result at: #class) equals: Collection class;
		assert: (result at: #selector) equals: ''.
	
	title := 'Collection Test [Collection>>#size]'.
	result := self issueManagement extractClassAndSelectorFromIssueTitle: title.
	self 
		assert: (result at: #class) equals: Collection;
		assert: (result at: #selector) equals: 'size'.
	
	title := 'Collection Test [Collection class>>#size]'.
	result := self issueManagement extractClassAndSelectorFromIssueTitle: title.
	self 
		assert: (result at: #class) equals: Collection class;
		assert: (result at: #selector) equals: 'size'