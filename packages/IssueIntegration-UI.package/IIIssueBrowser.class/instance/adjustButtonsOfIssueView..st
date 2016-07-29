user interface signals
adjustButtonsOfIssueView: aWindow
	(aWindow submorphNamed: 'settingsButton') layoutFrame
		leftFraction: 0.0; 
		rightFraction: 0.3.
	(aWindow submorphNamed: 'fixMeButton') layoutFrame
		leftFraction: 0.3;
		rightFraction: 0.7.
	(aWindow submorphNamed: 'singleIssueViewButton') layoutFrame
		leftFraction: 0.7;
		rightFraction: 1.0