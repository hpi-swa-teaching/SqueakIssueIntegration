user interface signals
buildWith: builder
	| window windowSpec repoListSpec singleIssueViewButtonSpec issueListSpec issueTitleSpec issueBodySpec issueAssigneeSpec fixMeButtonSpec packageBrowserButtonSpec|
	windowSpec := builder pluggableWindowSpec new.
	windowSpec
		model: self;
		label: 'Issue Browser';
		extent: 500@300;
		children: OrderedCollection new.
	
	repoListSpec := builder pluggableListSpec new.
	repoListSpec
		model: self;
		list: #setUpRepoList;
		name: 'repoList';
		frame: (0.0@0.0 corner: 0.5@0.2);
		getSelected: #selectedRepo;
		setSelected: #selectedRepo:.
	windowSpec children add: repoListSpec.	
		
	issueListSpec := builder pluggableListSpec new.
	issueListSpec 
		model: self;
		name: #issueList;
		list: #getIssues;
		menu: #issueListMenu:;
		getSelected: #selectedIssue;
		setSelected: #selectedIssue: ;
		frame: (0.0@0.2 corner: 0.5@1).
	windowSpec children add: issueListSpec.
	
	singleIssueViewButtonSpec := builder pluggableButtonSpec new.
	singleIssueViewButtonSpec
		model: self;
		label: '|';
		action: #openIssueView;
		frame: (0.8@0.95 corner: 1@1).
	"windowSpec children add: singleIssueViewButton.Spec"
		
	issueTitleSpec := builder pluggableTextSpec new.
	issueTitleSpec
		model: EmptyIssue new;
		name: #issueTitle;
		getText: #title;
		frame: (0.5@0.0 corner: 1.0@0.2).
	windowSpec children add: issueTitleSpec.

	issueAssigneeSpec := builder pluggableTextSpec new.
	issueAssigneeSpec
		model: EmptyIssue new;
		name: #issueAssignee;
		getText: #assignee;
		frame: (0.5@0.2 corner: 1.0@0.3).
	windowSpec children add: issueAssigneeSpec.
	
	issueBodySpec := builder pluggableTextSpec new.
	issueBodySpec 
		model: EmptyIssue new;
		name: #issueBody;
		getText: #body;
		frame: (0.5@0.3 corner: 1.0@0.9).
	windowSpec children add: issueBodySpec.
	
	fixMeButtonSpec := builder pluggableButtonSpec new.
	fixMeButtonSpec
		model: self;
		label: 'Fix me';
		name: 'fixMeButton';
		action: #openBrowser;
		frame: (0.75@0.9 corner: 1.0@1.0).
	windowSpec children add: fixMeButtonSpec.
	
	packageBrowserButtonSpec := builder pluggableButtonSpec new.
	packageBrowserButtonSpec
		model: self;
		label: 'Package Browser';
		action: #openPackageBrowser;
		frame: (0.5@0.9corner: 0.75@1.0).
	windowSpec children add: packageBrowserButtonSpec.	
	
	window := builder build: windowSpec.
	self issueWidgets: (Dictionary newFrom: {
		#issueTitle -> (builder widgetAt: #issueTitle) .
		#issueBody -> (builder widgetAt: #issueBody) .
		#issueAssignee -> (builder widgetAt: #issueAssignee)
	}).
	
	^ window