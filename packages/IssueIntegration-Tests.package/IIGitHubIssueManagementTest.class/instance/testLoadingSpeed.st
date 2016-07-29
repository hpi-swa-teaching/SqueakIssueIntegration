running
testLoadingSpeed
	"Test non-functional requirement that the System-Browser should load within 0.5 seconds. This is archived by simulating the 100 method requests of the Browser extension method"
	| messageTally |
	messageTally := MessageTally new.
	self issueManagement getMyIssuesForMethod: 'test method' 
		class: 'test class' 
		andIsMeta: false.
	messageTally spyEvery: MessageTally defaultPollPeriod on: [ 100 timesRepeat: [ 
		self issueManagement getMyIssuesForMethod: 'test method' 
			class: 'test class' 
			andIsMeta: false.
		self issueManagement getIssuesForMethod: 'test method' 
			class: 'test class' 
			andIsMeta: false ]].
	self assert: (messageTally time < 500)