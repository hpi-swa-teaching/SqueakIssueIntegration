instance creation
fromJSON: aJSON
	| issue |
	issue := self new.
	issue
		number: aJSON number;
		title: aJSON title;
		body: aJSON body;
		labels: (aJSON labels collect: [ :each | each at: 'name' ]).
	(aJSON assignee) ifNotNil: [ :assigneeJson |
		issue assignee: assigneeJson login ].
	^ issue