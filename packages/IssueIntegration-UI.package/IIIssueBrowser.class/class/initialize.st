class initialization
initialize 
	TheWorldMenu registry copy do: [ :ea| (ea first = 'Issue Integration') ifFalse: [ TheWorldMenu registerOpenCommand: {'Issue Integration'. {self. #open}} ]]