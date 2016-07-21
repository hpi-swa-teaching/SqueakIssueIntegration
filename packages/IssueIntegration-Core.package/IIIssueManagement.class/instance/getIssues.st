issue accessing
getIssues
	self isCacheVaild ifFalse: [ self refreshCache ].	
	^ self cachedIssues