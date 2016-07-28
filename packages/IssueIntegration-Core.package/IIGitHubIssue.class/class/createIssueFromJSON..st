instance creation
createIssueFromJSON: aJSON
	| issue |
	issue := self new.
	issue
		number: (aJSON at: 'number');
		title: (aJSON at: 'title');
		body: (aJSON at: 'body');
		labels: ((aJSON at: 'labels') collect: [ :each | each at: 'name' ]).
	(aJSON at: 'assignee') ifNotNil: [ :assigneeJson |
		issue assignee: (assigneeJson at: 'login') ].
	^ issue