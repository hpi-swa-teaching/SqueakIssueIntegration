running
testSmoke
	"Test whether a window is successfully opened, i.e. whether or not we see some smoke." 
	self assert: (self subject findByLabel: 'Issue Browser') notNil