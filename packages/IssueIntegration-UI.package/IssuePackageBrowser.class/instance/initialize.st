initialization
initialize

	super initialize.
	self ui setupUi: self.
	self setUpPackages.
	
	self ui packagesList connect: self ui packagesList signal: #currentTextChanged: to: self selector: #selectPackage: .
	self ui saveButton connect: self ui saveButton signal: #clicked: to: self selector: #save.
	self ui loginKeyButton connect: self ui loginKeyButton signal: #clicked: to: self selector: #generateToken