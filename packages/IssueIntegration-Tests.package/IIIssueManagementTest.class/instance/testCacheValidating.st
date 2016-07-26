running
testCacheValidating
	self issueManagement updateCacheDatetime.
	self assert: self issueManagement isCacheValid.
	
	self issueManagement invalidateCache.
	self assert: self issueManagement isCacheValid not