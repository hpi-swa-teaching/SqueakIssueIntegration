user interface signals
title
	selectedIssue title 
		ifNil: [ ^ title
			ifNil: [ '' ]
			ifNotNil: [ title ]]
		ifNotNil: [ ^ selectedIssue title ]