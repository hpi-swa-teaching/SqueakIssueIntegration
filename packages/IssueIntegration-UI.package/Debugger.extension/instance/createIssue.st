*IssueIntegration-UI-context stack menu
createIssue
	| ui body |
	ui := IIIssueCreator new.
	body := '```Smalltalk', String crlf.
	ui
		methodName: self selectedMessageName;
		packageName: self selectedClass category; 
		issueClassName: self selectedClass name;
		issueClassIsMeta: self selectedClass isMeta.

	self contextStackList do: [ :text | body := body, text, String crlf ].
	body := body, '```'.

	ui
		body: body;
		openInWindow