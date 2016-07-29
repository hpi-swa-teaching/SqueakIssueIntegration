caching
refreshCache
	self 
		cachedIssues: self loadIssues;
		cachedLabels: self loadLabels;
		updateCacheDatetime