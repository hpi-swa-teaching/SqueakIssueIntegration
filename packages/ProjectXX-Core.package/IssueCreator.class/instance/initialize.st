as yet unclassified
initialize

	

	super initialize.
	self ui setupUi: self.
	
	self ui createButton connect:(self ui createButton) signal:#clicked: to:self selector:#create