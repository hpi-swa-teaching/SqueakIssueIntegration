running
testLoadingSpeed
	"Test non-functional requirement that the System-Browser should load within 0.5 seconds. This is archived by simulating the requests of the Browser extension method"

	| messageTally |

	messageTally := MessageTally new.
	messageTally spyEvery: MessageTally defaultPollPeriod on: [
		50 timesRepeat: [ self issueManagement getMyIssuesForMethod: 'test method' class: 'test class' isMeta: false.
						    self issueManagement getIssuesForMethod: 'test method' class: 'test class' isMeta: false. ] ].
	self assert: (messageTally time < 500)