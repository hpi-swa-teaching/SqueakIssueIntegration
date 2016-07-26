running
testCacheDatetime
	| dateTime |
	dateTime := DateAndTime totalSeconds.
	
	self issueManagement cacheDatetime: dateTime.
	self assert: self issueManagement cacheDatetime equals: dateTime
	