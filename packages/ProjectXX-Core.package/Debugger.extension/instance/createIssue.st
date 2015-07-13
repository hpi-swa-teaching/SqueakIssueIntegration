*ProjectXX-Core-context stack menu
createIssue

	| ui body |

	ui := IssueCreator new.
	body := '```Smalltalk', String crlf.

	ui methodName: self selectedMessageName.
	ui packageName: self selectedClass category. 
	ui issueClassName: self selectedClass name.
	ui issueClassIsMeta: self selectedClass isMeta.

	self contextStackList do: [ :text | body := body, text, String crlf ].
	body := body, '```'.

	ui body: body.


	ui openInWindow