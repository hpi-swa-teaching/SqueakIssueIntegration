*IssueIntegration-UI-context stack menu
createIssue
	| ui body |
	ui := IIIssueCreator 
		newWithMethodName: self selectedMessageName 
		packageName: self selectedClass 
		category issueClassName: self selectedClass name 
		issueClassIsMeta: self selectedClass isMeta.
	
	body := '```smalltalk', String crlf.
	self contextStackList do: [ :text | body := body, text, String crlf ].
	body := body, '```'.

	ui model body: body.