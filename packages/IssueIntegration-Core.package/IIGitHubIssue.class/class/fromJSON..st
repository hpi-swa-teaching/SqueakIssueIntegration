instance creation
fromJson: aJson
	| issue |
	issue := self new
		number: aJson number;
		title: aJson title;
		body: aJson body;
		labels: (aJson labels collect: [ :each | each name ]);
		yourself.
	(aJson assignee) ifNotNil: [ :assigneeJson |
		issue assignee: assigneeJson login ].
	^ issue