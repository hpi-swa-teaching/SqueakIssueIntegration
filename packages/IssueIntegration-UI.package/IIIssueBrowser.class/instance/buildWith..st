user interface signals
buildWith: builder
	| window windowSpec repoListSpec singleIssueViewButtonSpec issueListSpec issueTitleSpec issueBodySpec issueAssigneeSpec fixMeButtonSpec settingsButtonSpec issueLabelSpec|
	windowSpec := builder pluggableWindowSpec new.
	windowSpec
		model: self;
		name: 'issueBrowser';
		label: 'Issue Browser';
		extent: 500@300;
		children: OrderedCollection new.
	
	repoListSpec := builder pluggableListSpec new.
	repoListSpec
		model: self;
		name: 'repoList';
		list: #setUpRepoList;
		frame: (0.0@0.0 corner: 0.5@0.2);
		getSelected: #selectedRepo;
		setSelected: #selectedRepo:.
	windowSpec children add: repoListSpec.	
		
	issueListSpec := builder pluggableListSpec new.
	issueListSpec 
		model: self;
		name: 'issueList';
		name: #issueList;
		list: #getIssues;
		menu: #issueListMenu:;
		getSelected: #selectedIssue;
		setSelected: #selectedIssue: ;
		frame: (0.0@0.2 corner: 0.5@1).
	windowSpec children add: issueListSpec.
	
	"singleIssueViewButtonSpec := builder pluggableButtonSpec new.
	singleIssueViewButtonSpec
		model: self;
		name: 'singleIssueViewButton';
		label: '|';
		action: #openIssueView;
		frame: (0.8@0.95 corner: 1@1).
	windowSpec children add: singleIssueViewButton.Spec"
		
	issueTitleSpec := builder pluggableInputFieldSpec new.
	issueTitleSpec
		model: self;
		name: 'issueTitle';
		getText: #title;
		setText: #title: ;
		frame: (0.5@0.0 corner: 1.0@0.2).
	windowSpec children add: issueTitleSpec.

	issueAssigneeSpec := builder pluggableInputFieldSpec new.
	issueAssigneeSpec
		model: self;
		name: 'issueAssignee';
		getText: #assignee;
		setText: #assignee: ;
		frame: (0.5@0.2 corner: 1.0@0.3).
	windowSpec children add: issueAssigneeSpec.
	
	issueBodySpec := builder pluggableInputFieldSpec new.
	issueBodySpec 
		model: self;
		name: 'issueBody';
		getText: #body;
		setText: #body: ;
		"frame: (0.5@0.3 corner: 1.0@0.9)."
		frame: (0.5@0.3 corner: 1.0@0.8). "For the Label integration"
	windowSpec children add: issueBodySpec.
	
	issueLabelSpec := builder pluggableInputFieldSpec new.
	issueLabelSpec 
		model: self;
		name: 'issueLabels';
		getText: #labels;
		"setText: #labels:;"
		frame: (0.5@0.8 corner: 1.0@0.9).
	windowSpec children add: issueLabelSpec.
	
	fixMeButtonSpec := builder pluggableButtonSpec new.
	fixMeButtonSpec
		model: self;
		name: 'fixMeButton';
		label: 'Fix me';
		action: #openBrowser;
		frame: (0.66@0.9 corner: 0.83@1.0).
	windowSpec children add: fixMeButtonSpec.
	
	settingsButtonSpec := builder pluggableButtonSpec new.
	settingsButtonSpec
		model: self;
		name: 'settingsButton';
		label: 'Settings';
		action: #openSettings;
		frame: (0.5@0.9 corner: 0.66@1.0).
	windowSpec children add: settingsButtonSpec.	
		
	singleIssueViewButtonSpec := builder pluggableButtonSpec new.
	singleIssueViewButtonSpec 
		model: self;
		name: 'singleIssueViewButton';
		label: 'Undock';
		action: #openIssueView;
		frame: (0.83 @ 0.9 corner: 1 @ 1).
	"windowSpec children add: singleIssueViewButtonSpec."
	
	window := builder build: windowSpec.
	self issueWidgets: (Dictionary newFrom: {
		#issueTitle -> (builder widgetAt: #issueTitle) .
		#issueBody -> (builder widgetAt: #issueBody) .
		#issueAssignee -> (builder widgetAt: #issueAssignee).
		#issueLabels -> (builder widgetAt: #issueLabels)
	}).
	
	^ window