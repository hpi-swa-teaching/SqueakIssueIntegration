caching
testCacheValidating
	"i broke it. new: refresh cache"
	self issueManagement cacheIssues: SortedCollection new.
	self assert: self issueManagement isCacheVaild.
	
	self issueManagement invalidateCache.
	self assert: self issueManagement isCacheVaild not