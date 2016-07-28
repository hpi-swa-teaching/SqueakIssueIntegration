class initialization
initialize 
	TheWorldMenu registry
		detect: [ :each | (each first = 'Issue Integration') ] 
		ifNone: [ TheWorldMenu registerOpenCommand: { 'Issue Integration' . { self . #open } } ]