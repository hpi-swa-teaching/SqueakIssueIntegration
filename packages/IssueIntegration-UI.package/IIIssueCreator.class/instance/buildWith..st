initialize-release
buildWith: builder
	| windowSpec titleInputSpec assigneeInputSpec bodyInputSpec labelListSpec submitButtonSpec window |
	windowSpec := builder pluggableWindowSpec new
		model: self;
		name: 'IssueCreator';
		children: OrderedCollection new;
		label: 'IssueCreator';
		extent: 500@300;
		minimumExtent: 300@250;
		yourself.
	
	titleInputSpec := builder pluggableInputFieldSpec new
		model: self;
		name: 'titleInput';
		getText: #title;
		setText: #title:;
		help: 'Title';
		frame: (0@0 corner: 0.6@0.1);
		yourself. 
	windowSpec children add: titleInputSpec.
	
	assigneeInputSpec := builder pluggableInputFieldSpec new
		model: self;
		name: 'assingeeInput';
		getText: #assignee;
		setText: #assignee:;
		help: 'Assignee';
		frame: (0@0.1 corner: 0.6@0.2);
		yourself. 
	windowSpec children add: assigneeInputSpec.
	
	bodyInputSpec := builder pluggableInputFieldSpec new
		model: self;
		name: 'bodyInput';
		getText: #body;
		setText: #body:;
		help: 'Description';
		frame: (0@0.2 corner: 0.6@0.9);
		yourself. 
	windowSpec children add: bodyInputSpec.
	
	labelListSpec := builder pluggableMultiSelectionListSpec new
		model: self;
		name: 'labelList';
		list: #getLabelsOfRepo;
		getSelectionList: #labelsAt:;
		setSelectionList: #labelsAt:put:;
		frame: (0.6@0 corner: 1@0.9);
		yourself.
	windowSpec children add: labelListSpec.
	
	submitButtonSpec := builder pluggableActionButtonSpec new
		model: self;
		name: 'submitButton';
		label: 'Submit Issue';
		action: #createIssue;
		frame: (0.65@0.9 corner: 1@1);
		yourself.
	windowSpec children add: submitButtonSpec.		
	
	window := builder build: windowSpec.
	self windowWidget: window.
	^ window