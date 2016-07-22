user interface signals
buildWith: builder
	| windowSpec repoListSpec issueListSpec 
	issueTitleSpec issueBodySpec issueAssigneeSpec issueLabelSpec 
	fixMeButtonSpec settingsButtonSpec singleIssueViewButtonSpec |
	windowSpec := builder pluggableWindowSpec new.
	windowSpec
		model: self;
		name: 'issueBrowser';
		label: 'Issue Browser';
		extent: 700@300;
		minimumExtent: 400@250;
		children: OrderedCollection new.
	
	repoListSpec := builder pluggableListSpec new.
	repoListSpec
		model: self;
		name: 'repoList';
		list: #repoList;
		frame: (0.0@0.0 corner: 0.35@0.2);
		getSelected: #selectedRepo;
		setSelected: #selectedRepo:.
	windowSpec children add: repoListSpec.	
		
	issueListSpec := builder pluggableListSpec new.
	issueListSpec 
		model: self;
		name: 'issueList';
		name: #issueList;
		list: #issueList;
		menu: #issueListMenu:;
		getSelected: #selectedIssue;
		setSelected: #selectedIssue:;
		frame: (0.0@0.2 corner: 0.35@1.0).
	windowSpec children add: issueListSpec.
			
	issueTitleSpec := builder pluggableInputFieldSpec new.
	issueTitleSpec
		model: self;
		name: 'issueTitle';
		getText: #title;
		setText: #title:;
		softLineWrap: true;
		frame: (0.35@0.0 corner: 0.675@0.2).
	windowSpec children add: issueTitleSpec.

	issueAssigneeSpec := builder pluggableInputFieldSpec new.
	issueAssigneeSpec
		model: self;
		name: 'issueAssignee';
		getText: #assignee;
		setText: #assignee:;
		softLineWrap: true;
		frame: (0.35@0.2 corner: 0.675@0.3).
	windowSpec children add: issueAssigneeSpec.
	
	issueBodySpec := builder pluggableInputFieldSpec new.
	issueBodySpec 
		model: self;
		name: 'issueBody';
		getText: #body;
		setText: #body:;
		softLineWrap: true;
		frame: (0.35@0.3 corner: 1@0.9). 
	windowSpec children add: issueBodySpec.
	
	issueLabelSpec := builder pluggableMultiSelectionListSpec new.
	issueLabelSpec
		model: self;
		name: 'issueLabels';
		list: #labelList;
		getSelectionList: #labelsAt:;
		setSelectionList: #labelsAt:put:;
		frame: (0.675@0.0 corner: 1.0@0.3).
	windowSpec children add: issueLabelSpec.
		
	settingsButtonSpec := builder pluggableButtonSpec new.
	settingsButtonSpec
		model: self;
		name: 'settingsButton';
		label: 'Settings';
		action: #openSettings;
		frame: (0.35@0.9 corner: 0.5@1.0).
	windowSpec children add: settingsButtonSpec.	
		
	fixMeButtonSpec := builder pluggableButtonSpec new.
	fixMeButtonSpec
		model: self;
		name: 'fixMeButton';
		label: 'Fix me';
		action: #openBrowser;
		enabled: #issueSelected;
		frame: (0.5@0.9 corner: 0.65@1.0).
	windowSpec children add: fixMeButtonSpec.
		
	singleIssueViewButtonSpec := builder pluggableButtonSpec new.
	singleIssueViewButtonSpec 
		model: self;
		name: 'singleIssueViewButton';
		label: 'Open';
		action: #openIssueView;
		enabled: #issueSelected;
		frame: (0.85@0.9 corner: 1.0@1.0).
	windowSpec children add: singleIssueViewButtonSpec.
	
	^ builder build: windowSpec