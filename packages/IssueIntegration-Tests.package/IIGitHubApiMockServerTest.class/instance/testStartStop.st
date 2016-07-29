running
testStartStop
	self assert: false equals: self apiServer webServer isRunning.
	self apiServer start.
	self assert: true equals: self apiServer webServer isRunning.
	self apiServer stop.
	self assert: false equals: self apiServer webServer isRunning