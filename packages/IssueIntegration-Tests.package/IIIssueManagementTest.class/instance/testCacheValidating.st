caching
testCacheValidating
	self issueManagement cacheIssues: SortedCollection new.
	self assert: self issueManagement isCacheVaild.
	
	self issueManagement invalidateCache.
	self assert: self issueManagement isCacheVaild not