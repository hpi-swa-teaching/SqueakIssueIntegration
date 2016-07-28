user interface signals
adjustSubMorphsOfIssueView: aWindow
	(aWindow submorphNamed: 'repoList') hide.
	(aWindow submorphNamed: 'issueList') hide.
	(aWindow submorphNamed: 'issueTitle') layoutFrame leftFraction: 0.0.
	(aWindow submorphNamed: 'issueAssignee') layoutFrame leftFraction: 0.0.
	(aWindow submorphNamed: 'issueBody') layoutFrame leftFraction: 0.0