user interface signals
buildWith: builder
	| windowSpec listSpec projectIdInputSpec loginKeyInputSpec usernameInputSpec applyButtonSpec applyAndQuitButtonSpec createTokenButtonSpec window |
	
	windowSpec := builder pluggableWindowSpec new
		model: self;
		name: 'Settings';
		children: OrderedCollection new;
		label: 'Settings';
		extent: 500@300;
		minimumExtent: 450@300.
	
	listSpec := builder pluggableListSpec new
		model: self;
		name: 'packageList';
		list: #setUpPackages;
		setSelected: #selectedPackage:;
		getSelected: #selectedPackage;
		frame: (0@0 corner: 0.4@1).
	windowSpec children add: listSpec.
	
	projectIdInputSpec := builder pluggableInputFieldSpec new
		model: self;
		name: 'projectIdInput';
		getText: #projectID;
		setText: #projectID:;
		help: 'Your repo: user-name/repo-name';
		frame: (0.4@0 corner: 1@0.1).
	windowSpec children add: projectIdInputSpec.
	
	usernameInputSpec := builder pluggableInputFieldSpec new
		model: self;
		name: 'usernameInput';
		getText: #username;
		setText: #username:;
		help: 'Your username';
		frame: (0.4@0.1 corner: 1@0.2).
	windowSpec children add: usernameInputSpec.
	
	loginKeyInputSpec := builder pluggableInputFieldSpec new
		model: self;
		name: 'loginKeyInput';
		getText: #loginKey;
		setText: #loginKey:;
		help: 'Your OAuth-Token';
		frame: (0.4@0.2 corner: 1@0.3).
	windowSpec children add: loginKeyInputSpec.
	
	createTokenButtonSpec := builder pluggableActionButtonSpec new
		model: self;
		name: 'createTokenButton';
		label: 'Create new OAuth-Token';
		action: #generateToken;
		frame: (0.4@0.3 corner: 1@0.45).
	windowSpec children add: createTokenButtonSpec.
	
	applyButtonSpec := builder pluggableActionButtonSpec new
		model: self;
		name: 'saveButton';
		label: 'Save';
		action: #save;
		frame: (0.6@0.9 corner: 0.8@1).
	windowSpec children add: applyButtonSpec.
	
	applyAndQuitButtonSpec := builder pluggableActionButtonSpec new
		model: self;
		name: 'saveAndQuitButton';
		label: 'Save and Quit';
		action: #saveAndQuit;
		frame: (0.8@0.9 corner: 1@1).
	windowSpec children add: applyAndQuitButtonSpec.
	
	window := builder build: windowSpec.
	self windowWidget: window.
	^ window