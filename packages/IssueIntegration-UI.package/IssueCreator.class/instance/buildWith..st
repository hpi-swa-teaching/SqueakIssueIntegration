accessing
buildWith: builder
	| windowSpec titleInputSpec assigneeInputSpec bodyInputSpec submitButton |
	
	windowSpec := builder pluggableWindowSpec new
		model: self;
		children: OrderedCollection new;
		label: 'IssueCreator';
		extent: 500@300.
	
	titleInputSpec := builder pluggableInputFieldSpec new
		model: self;
		getText: #title;
		setText: #title:;
		help: 'Title';
		frame: (0@0 corner: 1@0.1).
	windowSpec children add: titleInputSpec.
	
	assigneeInputSpec := builder pluggableInputFieldSpec new
		model: self;
		getText: #assignee;
		setText: #assignee:;
		help: 'Assignee';
		frame: (0@0.1 corner: 1@0.2).
	windowSpec children add: assigneeInputSpec.
	
	bodyInputSpec := builder pluggableInputFieldSpec new
		model: self;
		getText: #body;
		setText: #body:;
		help: 'Description';
		frame: (0@0.2 corner: 1@1).
	windowSpec children add: bodyInputSpec.
	
	submitButton := builder pluggableActionButtonSpec new
		model: self;
		label: 'Submit Issue';
		action: #createIssue;
		frame: (0.8@0.85 corner: 1@1).
	windowSpec children add: submitButton.		
	
	^ builder build: windowSpec