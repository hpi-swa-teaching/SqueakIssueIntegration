user interface signals
buildWith: builder
	| window windowSpec repoListSpec singleIssueViewButtonSpec issueListSpec issueTitleSpec issueBodySpec issueAssigneeSpec fixMeButtonSpec settingsButtonSpec issueLabelSpec|
	windowSpec := builder pluggableWindowSpec new.
	windowSpec
		model: self;
		name: 'issueBrowser';
		label: 'Issue Browser';
		extent: 700@300;
		children: OrderedCollection new.
	
	repoListSpec := builder pluggableListSpec new.
	repoListSpec
		model: self;
		name: 'repoList';
		list: #setUpRepoList;
		frame: (0.0@0.0 corner: 0.35@0.2);
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
		frame: (0.0@0.2 corner: 0.35@1).
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
		frame: (0.35@0.0 corner: 0.7@0.2).
	windowSpec children add: issueTitleSpec.

	issueAssigneeSpec := builder pluggableInputFieldSpec new.
	issueAssigneeSpec
		model: self;
		name: 'issueAssignee';
		getText: #assignee;
		setText: #assignee: ;
		frame: (0.35@0.2 corner: 0.7@0.3).
	windowSpec children add: issueAssigneeSpec.
	
	issueBodySpec := builder pluggableInputFieldSpec new.
	issueBodySpec 
		model: self;
		name: 'issueBody';
		getText: #body;
		setText: #body: ;
		frame: (0.35@0.3 corner: 1@0.9). 
	windowSpec children add: issueBodySpec.
	
	issueLabelSpec := builder pluggableMultiSelectionListSpec new.
	issueLabelSpec
		model: self;
		name: 'issueLabels';
		list: #labels;
		getSelectionList: #labelsAt:;
		setSelectionList: #labelsAt:put:;
		frame: (0.7@0 corner: 1@0.3).
	windowSpec children add: issueLabelSpec.
	
"	issueLabelSpec := builder pluggableInputFieldSpec new.
	issueLabelSpec 
		model: self;
		name: 'issueLabels';
		getText: #labels;
'		setText: #labels:;'
		frame: (0.5@0.8 corner: 1.0@0.9).
	windowSpec children add: issueLabelSpec."
	
	settingsButtonSpec := builder pluggableButtonSpec new.
	settingsButtonSpec
		model: self;
		name: 'settingsButton';
		label: 'Settings';
		action: #openSettings;
		frame: (0.35@0.9 corner: 0.45@1.0).
	windowSpec children add: settingsButtonSpec.	
		
	fixMeButtonSpec := builder pluggableButtonSpec new.
	fixMeButtonSpec
		model: self;
		name: 'fixMeButton';
		label: 'Fix me';
		action: #openBrowser;
		frame: (0.45@0.9 corner: 0.55@1.0).
	windowSpec children add: fixMeButtonSpec.
		
	singleIssueViewButtonSpec := builder pluggableButtonSpec new.
	singleIssueViewButtonSpec 
		model: self;
		name: 'singleIssueViewButton';
		label: 'Undock';
		action: #openIssueView;
		frame: (0.55 @ 0.66 corner: 1 @ 1).
	"windowSpec children add: singleIssueViewButtonSpec."
	
	window := builder build: windowSpec.
	self issueWidgets: (Dictionary newFrom: {
		#issueTitle -> (builder widgetAt: #issueTitle) .
		#issueBody -> (builder widgetAt: #issueBody) .
		#issueAssignee -> (builder widgetAt: #issueAssignee).
		#issueLabels -> (builder widgetAt: #issueLabels)
	}).
	
	^ window