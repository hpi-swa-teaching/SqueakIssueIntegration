user interface signals
openIssueView
	| issueView settingsButton fixMeButton issueViewButton |
	issueView := self window veryDeepCopy.
	(issueView submorphNamed: 'repoList') hide.
	(issueView submorphNamed: 'issueList') hide.
	(issueView submorphNamed: 'issueTitle') layoutFrame leftFraction: 0.0.
	(issueView submorphNamed: 'issueAssignee') layoutFrame leftFraction: 0.0.
	(issueView submorphNamed: 'issueBody') layoutFrame leftFraction: 0.0.
	settingsButton := (issueView submorphNamed: 'settingsButton') layoutFrame.
	fixMeButton := (issueView submorphNamed: 'fixMeButton') layoutFrame.
	issueViewButton := (issueView submorphNamed: 'singleIssueViewButton') layoutFrame.
	settingsButton leftFraction: 0.0.
	settingsButton rightFraction: 0.3.
	fixMeButton leftFraction: 0.3.
	fixMeButton rightFraction: 0.7.
	issueViewButton leftFraction: 0.7.
	issueViewButton rightFraction: 1.0.
	issueView extent: 400 @ 250.
	issueView openInHand