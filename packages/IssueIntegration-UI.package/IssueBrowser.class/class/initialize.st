class initialization
initialize 
	TheWorldMenu registry copy do: [ :ea| (ea first = 'Issue Browser') ifFalse: [TheWorldMenu registerOpenCommand: {'Issue Browser'. {self. #open}}]]