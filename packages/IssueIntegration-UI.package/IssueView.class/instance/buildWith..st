as yet unclassified
buildWith: builder

	| windowSpec issueTitle issueBody issueAssignee |
	
	windowSpec := builder pluggableWindowSpec new.
	windowSpec
		model: self;
		label: 'Issue View';
		extent: 250@300;
		children: OrderedCollection new.
		
	issueTitle := builder pluggableTextSpec new.
	issueTitle 
		model: self selectedIssue;
		getText: #title;
		frame: (0.0@0.05 corner: 1.0@0.2).
	windowSpec children add: issueTitle.

	issueBody := builder pluggableTextSpec new.
	issueBody 
		model: self selectedIssue;
		getText: #body;
		frame: (0.0@0.3 corner: 1.0@0.5).
	windowSpec children add: issueBody.
	
	issueAssignee := builder pluggableTextSpec new.
	issueAssignee
		model: self selectedIssue;
		getText: #assignee;
		frame: (0.0@0.5 corner: 1.0@0.6).
	windowSpec children add: issueAssignee.
		
	^ builder build: windowSpec