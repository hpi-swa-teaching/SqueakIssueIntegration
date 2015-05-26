as yet unclassified
createIssueFromJSON: aJSON
	| issue |

	issue := self new.
	issue number: (aJSON at: 'number').
	issue title: (aJSON at: 'title').
	issue body: (aJSON at: 'body').

	^ issue