user interface signals
buildWith: builder
	| windowSpec listSpec projectIdInputSpec loginKeyInputSpec usernameInputSpec |
	
	windowSpec := builder pluggableWindowSpec new
		model: self;
		children: OrderedCollection new;
		label: 'Issue Package Browser';
		extent: 500@300.
	
	listSpec := builder pluggableListSpec new
		model: self;
		list: #setUpPackages;
		setSelected: #selectedPackage:;
		getSelected: #selectedPackage;
		frame: (0@0 corner: 0.4@1).
	windowSpec children add: listSpec.
	
	projectIdInputSpec := builder pluggableInputFieldSpec new
		model: self;
		getText: #projectID;
		setText: #projectID:;
		frame: (0.4@0 corner: 1@0.1).
	windowSpec children add: projectIdInputSpec.
	
	usernameInputSpec := builder pluggableInputFieldSpec new
		model: self;
		getText: #username;
		setText: #username:;
		frame: (0.4@0.1 corner: 1@0.2).
	windowSpec children add: usernameInputSpec.
	
	loginKeyInputSpec := builder pluggableInputFieldSpec new
		model: self;
		getText: #loginKey;
		setText: #loginKey:;
		frame: (0.4@0.2 corner: 1@0.3).
	windowSpec children add: loginKeyInputSpec.
	
	^ builder build: windowSpec