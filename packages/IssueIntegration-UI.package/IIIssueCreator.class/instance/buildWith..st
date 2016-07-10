accessing
buildWith: builder
	| windowSpec titleInputSpec assigneeInputSpec bodyInputSpec submitButton window labelSpec|
	
	windowSpec := builder pluggableWindowSpec new
		model: self;
		name: 'IssueCreator';
		children: OrderedCollection new;
		label: 'IssueCreator';
		"extent: 300@300."
		extent: 500@300. "For Label support"
	
	titleInputSpec := builder pluggableInputFieldSpec new
		model: self;
		name: 'titleInput';
		getText: #title;
		setText: #title:;
		help: 'Title';
		"frame: (0@0 corner: 1@0.1)."
		frame: (0@0 corner: 0.6@0.1). "For Label support"
	windowSpec children add: titleInputSpec.
	
	assigneeInputSpec := builder pluggableInputFieldSpec new
		model: self;
		name: 'assingeeInput';
		getText: #assignee;
		setText: #assignee:;
		help: 'Assignee';
		"frame: (0@0.1 corner: 1@0.2)."
		frame: (0@0.1 corner: 0.6@0.2). "For Label support"
	windowSpec children add: assigneeInputSpec.
	
	bodyInputSpec := builder pluggableInputFieldSpec new
		model: self;
		name: 'bodyInput';
		getText: #body;
		setText: #body:;
		help: 'Description';
		"frame: (0@0.2 corner: 1@0.9)."
		frame: (0@0.2 corner: 0.6@0.9). "For Label support"
	windowSpec children add: bodyInputSpec.
	
	labelSpec := builder pluggableMultiSelectionListSpec new
		model: self;
		name: 'labels';
		list: #getLabelsOfRepo;
		"getIndex: #labelsSelected;
		setIndex: #labelsSelected:;
		getSelectionList: #labelsAt:;
		setSelectionList: #labelsAt:put:;"
		frame: (0.6@0 corner: 1@0.9).
	windowSpec children add: labelSpec.
	
	submitButton := builder pluggableActionButtonSpec new
		model: self;
		name: 'submitButton';
		label: 'Submit Issue';
		action: #createIssue;
		frame: (0.65@0.9 corner: 1@1).
	windowSpec children add: submitButton.		
	
	window := builder build: windowSpec.
	self windowWidget: window.
	^ window