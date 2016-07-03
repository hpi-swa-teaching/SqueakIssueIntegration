as yet unclassified
buildWith: builder

	| windowSpec issueTitleSpec issueAssigneeSpec issueBodySpec settingsButtonSpec editButtonSpec fixMeButtonSpec |
	
	windowSpec := builder pluggableWindowSpec new.
	windowSpec
		model: self;
		name: 'issueView';
		label: 'Issue View';
		extent: 250@300;
		children: OrderedCollection new.
		
	issueTitleSpec := builder pluggableTextSpec new.
	issueTitleSpec
		model: self;
		name: 'issueTitle';
		getText: #title;
		setText: #title:;
		frame: (0@0.0 corner: 1.0@0.2).
	windowSpec children add: issueTitleSpec.

	issueAssigneeSpec := builder pluggableTextSpec new.
	issueAssigneeSpec
		model: self;
		name: 'issueAssignee';
		getText: #assignee;
		setText: #assignee:;
		frame: (0@0.2 corner: 1.0@0.3).
	windowSpec children add: issueAssigneeSpec.
	
	issueBodySpec := builder pluggableTextSpec new.
	issueBodySpec 
		model: self;
		name: 'issueBody';
		getText: #body;
		setText: #body:;
		frame: (0@0.3 corner: 1.0@0.9).
	windowSpec children add: issueBodySpec.
	
	settingsButtonSpec := builder pluggableButtonSpec new.
	settingsButtonSpec
		model: self;
		name: 'settingsButton';
		label: 'Settings';
		action: #openSettings;
		frame: (0@0.9corner: 0.33@1.0).
	windowSpec children add: settingsButtonSpec.	
	
	editButtonSpec := builder pluggableButtonSpec new.
	editButtonSpec
		model: self;
		name: 'editButton';
		label: 'Edit';
		action: #openBrowser;
		frame: (0.33@0.9 corner: 0.66@1.0).
	windowSpec children add: editButtonSpec.
	
	fixMeButtonSpec := builder pluggableButtonSpec new.
	fixMeButtonSpec
		model: self;
		name: 'fixMeButton';
		label: 'Fix me';
		action: #openBrowser;
		frame: (0.66@0.9 corner: 1.0@1.0).
	windowSpec children add: fixMeButtonSpec.
		
	^ builder build: windowSpec