as yet unclassified
buildWith: builder
	| windowSpec issueTitleSpec issueBodySpec issueAssigneeSpec issueLabelSpec fixMeButtonSpec |
	windowSpec := builder pluggableWindowSpec new.
	windowSpec
		model: self;
		name: 'issueBrowser';
		label: 'Issue Browser';
		extent: 455@300;
		minimumExtent: 300@250;
		children: OrderedCollection new.
			
	issueTitleSpec := builder pluggableInputFieldSpec new.
	issueTitleSpec
		model: self;
		name: 'issueTitle';
		getText: #title;
		setText: #title:;
		softLineWrap: true;
		frame: (0.0@0.0 corner: 0.5@0.2).
	windowSpec children add: issueTitleSpec.

	issueAssigneeSpec := builder pluggableInputFieldSpec new.
	issueAssigneeSpec
		model: self;
		name: 'issueAssignee';
		getText: #assignee;
		setText: #assignee:;
		softLineWrap: true;
		frame: (0.0@0.2 corner: 0.5@0.3).
	windowSpec children add: issueAssigneeSpec.
	
	issueBodySpec := builder pluggableInputFieldSpec new.
	issueBodySpec 
		model: self;
		name: 'issueBody';
		getText: #body;
		setText: #body:;
		softLineWrap: true;
		frame: (0.0@0.3 corner: 1.0@0.9). 
	windowSpec children add: issueBodySpec.
	
	issueLabelSpec := builder pluggableMultiSelectionListSpec new.
	issueLabelSpec
		model: self;
		name: 'issueLabels';
		list: #labels;
		getSelectionList: #labelsAt:;
		setSelectionList: #labelsAt:put:;
		frame: (0.5@0.0 corner: 1.0@0.3).
	windowSpec children add: issueLabelSpec.
			
	fixMeButtonSpec := builder pluggableButtonSpec new.
	fixMeButtonSpec
		model: self;
		name: 'fixMeButton';
		label: 'Fix me';
		action: #openBrowser;
		frame: (0.0@0.9 corner: 1.0@1.0).
	windowSpec children add: fixMeButtonSpec.
	
	^ builder build: windowSpec