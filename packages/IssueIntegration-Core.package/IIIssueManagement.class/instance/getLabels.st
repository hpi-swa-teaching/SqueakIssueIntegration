issue accessing
getLabels
	self isCacheValid ifFalse: [ self refreshCache ].	
	^ self cachedLabels