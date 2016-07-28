user interface signals
validateUsername
	self username isEmpty ifTrue: [ self error: 'Please insert your username' ]