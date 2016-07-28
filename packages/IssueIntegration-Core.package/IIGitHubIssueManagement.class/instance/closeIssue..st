issue editing
closeIssue: anIssue
	^ self editIssue: anIssue withProperty: 'state' andValue: 'closed'