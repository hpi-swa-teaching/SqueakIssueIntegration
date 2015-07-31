issue accessing
getIssues

	(self isCacheVaild) ifFalse: [
		self cacheIssues: self loadIssues.
	].
	
	^ self cachedIssues