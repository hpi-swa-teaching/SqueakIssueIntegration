as yet unclassified
buildWith: builder

	| windowSpec titleInputSpec assigneeInputSpec bodyInputSpec |
	
	windowSpec := builder pluggableWindowSpec new.
	windowSpec
		model: self;
		name: 'issueView';
		label: 'Issue View';
		extent: 250@300;
		children: OrderedCollection new.
		
	titleInputSpec := builder pluggableTextSpec new.
	titleInputSpec 
		model: self selectedIssue;
		name: 'titleInput';
		getText: #title;
		frame: (0.0@0.05 corner: 1.0@0.2).
	windowSpec children add: titleInputSpec.

	bodyInputSpec := builder pluggableTextSpec new.
	bodyInputSpec 
		model: self selectedIssue;
		name: 'bodyInput';
		getText: #body;
		frame: (0.0@0.3 corner: 1.0@0.5).
	windowSpec children add: bodyInputSpec.
	
	assigneeInputSpec := builder pluggableTextSpec new.
	assigneeInputSpec
		model: self selectedIssue;
		name: 'assigneeInput';
		getText: #assignee;
		frame: (0.0@0.5 corner: 1.0@0.6).
	windowSpec children add: assigneeInputSpec.
		
	^ builder build: windowSpec