user interface signals
adjustButtonsOfIssueView: aWindow
	| settingsButton fixMeButton issueViewButton |
	settingsButton := (aWindow submorphNamed: 'settingsButton') layoutFrame.
	fixMeButton := (aWindow submorphNamed: 'fixMeButton') layoutFrame.
	issueViewButton := (aWindow submorphNamed: 'singleIssueViewButton') layoutFrame.
	settingsButton leftFraction: 0.0.
	settingsButton rightFraction: 0.3.
	fixMeButton leftFraction: 0.3.
	fixMeButton rightFraction: 0.7.
	issueViewButton leftFraction: 0.7.
	issueViewButton rightFraction: 1.0