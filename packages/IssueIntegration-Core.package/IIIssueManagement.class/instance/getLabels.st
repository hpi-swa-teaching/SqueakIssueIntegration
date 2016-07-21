issue accessing
getLabels
	self isCacheVaild ifFalse: [ self refreshCache ].	
	^ self cachedLabels