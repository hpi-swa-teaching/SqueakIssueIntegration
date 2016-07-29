user interface signals
adjustSubMorphsOfIssueView: aWindow
	(aWindow submorphNamed: 'repoList') hide.
	(aWindow submorphNamed: 'issueList') hide.
	(aWindow submorphNamed: 'titleInput') layoutFrame leftFraction: 0.0.
	(aWindow submorphNamed: 'assigneeInput') layoutFrame leftFraction: 0.0.
	(aWindow submorphNamed: 'bodyInput') layoutFrame leftFraction: 0.0