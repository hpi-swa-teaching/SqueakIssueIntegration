initialization
initialize

	| packageNames|

	super initialize.
	self ui setupUi: self.

	packageNames := PackageOrganizer default packageNames.
	packageNames sort.
	packageNames do: [:package | self ui packagesList addText: package].
	
	self ui packagesList connect: ( self ui packagesList) signal: #currentTextChanged: to: self selector: #selectPackage: .
	self ui saveButton connect: ( self ui saveButton) signal: #clicked: to: self selector: #save