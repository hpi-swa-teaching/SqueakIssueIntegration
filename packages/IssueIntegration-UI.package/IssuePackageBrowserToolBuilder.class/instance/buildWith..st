user interface signals
buildWith: builder
	| windowSpec listSpec projectIdInputSpec loginKeyInputSpec usernameInputSpec saveButtonSpec createTokenButtonSpec |
	
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
		help: 'Your repo: user-name/repo-name';
		frame: (0.4@0 corner: 1@0.1).
	windowSpec children add: projectIdInputSpec.
	
	usernameInputSpec := builder pluggableInputFieldSpec new
		model: self;
		getText: #username;
		setText: #username:;
		help: 'Your username';
		frame: (0.4@0.1 corner: 1@0.2).
	windowSpec children add: usernameInputSpec.
	
	loginKeyInputSpec := builder pluggableInputFieldSpec new
		model: self;
		getText: #loginKey;
		setText: #loginKey:;
		help: 'Your OAuth-Token';
		frame: (0.4@0.2 corner: 1@0.3).
	windowSpec children add: loginKeyInputSpec.
	
	createTokenButtonSpec := builder pluggableActionButtonSpec new
		model: self;
		label: 'Create new OAuth-Token';
		action: #generateToken;
		frame: (0.4@0.3 corner: 1@0.45).
	windowSpec children add: createTokenButtonSpec.
	
	saveButtonSpec := builder pluggableActionButtonSpec new
		model: self;
		label: 'Save';
		action: #save;
		frame: (0.8@0.85 corner: 1@1).
	windowSpec children add: saveButtonSpec.
	
	^ builder build: windowSpec