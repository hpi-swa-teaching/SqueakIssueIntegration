instance creation
createIssueFromJSON: aJSON
	| issue |

	issue := self new.
	issue number: (aJSON at: 'number').
	issue title: (aJSON at: 'title').
	issue body: (aJSON at: 'body').
	(aJSON at: 'assignee') ifNotNil: [
		issue assignee: ((aJSON at: 'assignee') at: 'login').
	].

	^ issue