issue accessing
getIssues
	self isCacheValid ifFalse: [ self refreshCache ].	
	^ self cachedIssues