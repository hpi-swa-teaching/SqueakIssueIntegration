as yet unclassified
buildWith: builder

	| window windowSpec repoList singleIssueViewButton issueList issueTitle issueBody issueAssignee |
	windowSpec := builder pluggableWindowSpec new.
	windowSpec
		model: self;
		label: 'Issue Browser';
		extent: 500@300;
		children: OrderedCollection new.
	
	repoList := builder pluggableDropDownListSpec new.
	repoList
		model: self;
		listSelector: self repoList asString;
		frame: (0.0@0.0 corner: 0.1@0.5);
		selectionSelector: #selectedPackage;
		selectionSetter: #selectedPackage:.
	windowSpec children add: repoList.	
		
	issueList := builder pluggableListSpec new.
	issueList 
		model: self;
		name: #issueList;
		list: #getIssues;
		getSelected: #selectedIssue;
		setSelected: #selectedIssue: ;
		frame: (0.0@0.05 corner: 0.5@1).
	windowSpec children add: issueList.
	
	singleIssueViewButton := builder pluggableButtonSpec new.
	singleIssueViewButton
		model: self;
		label: '|';
		action: #openIssueView;
		frame: (0.8@0.95 corner: 1@1).
	windowSpec children add: singleIssueViewButton.
		
	issueTitle := builder pluggableTextSpec new.
	issueTitle 
		model: EmptyIssue new;
		name: #issueTitle;
		getText: #title;
		frame: (0.5@0.05 corner: 1.0@0.2).
	windowSpec children add: issueTitle.

	issueBody := builder pluggableTextSpec new.
	issueBody 
		model: EmptyIssue new;
		name: #issueBody;
		getText: #body;
		frame: (0.5@0.3 corner: 1.0@0.5).
	windowSpec children add: issueBody.
	
	issueAssignee := builder pluggableTextSpec new.
	issueAssignee
		model: EmptyIssue new;
		name: #issueAssignee;
		getText: #assignee;
		frame: (0.5@0.5 corner: 1.0@0.6).
	windowSpec children add: issueAssignee.
	
	window := builder build: windowSpec.
	self issueWidgets: (Dictionary newFrom: {
		#issueTitle -> (builder widgetAt: #issueTitle) .
		#issueBody -> (builder widgetAt: #issueBody) .
		#issueAssignee -> (builder widgetAt: #issueAssignee)
	}).
	
	^ window