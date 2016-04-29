as yet unclassified
selectIssue: anIssue
	
	self ui issueBody 
		clear;
		append: anIssue body.
		
	self ui issueTitle
		text: anIssue title.
	
	(anIssue assignee) ifNil: [ self ui issueAssignee text: ''. ]
		ifNotNil: [ self ui issueAssignee text: anIssue assignee. ]