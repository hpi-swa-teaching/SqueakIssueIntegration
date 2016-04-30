instance creation
createIssueFromJSON: aJSON
	| issue |

	issue := self new.
	issue number: (aJSON at: 'number');
	 title: (aJSON at: 'title');
	 body: (aJSON at: 'body').

	(aJSON at: 'assignee') ifNotNil: [:assigneeJson |
		issue assignee: (assigneeJson at: 'login'). ].

	(aJSON at: 'labels') ifNotNil: [ :labelsJsonCollection |
		labelsJsonCollection do: [ :labelsJson |
			issue labels add: (labelsJson at: 'name'). ].].

	^ issue