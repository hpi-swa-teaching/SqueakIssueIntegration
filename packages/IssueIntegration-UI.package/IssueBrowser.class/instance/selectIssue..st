as yet unclassified
selectIssue: anIssue
	
	self ui issueBody 
		clear;
		append: anIssue body.
		
	self ui issueTitle text: anIssue title.
	
	self ui issueAssignee text: ''.
	(anIssue assignee) ifNotNil: [ self ui issueAssignee text: anIssue assignee. ].
	"
	self ui issueLabels text: ''.
	(anIssue labels) ifNotNil: [ anIssue labels do:
		 [ :label | self ui issueLabels text: self ui issueLabels text, label, ' ' ]].
	"