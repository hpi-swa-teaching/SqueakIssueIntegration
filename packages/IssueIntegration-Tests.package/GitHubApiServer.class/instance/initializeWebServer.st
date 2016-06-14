as yet unclassified
initializeWebServer
	self webServer addService: '/repos/' , self class repoSlug, '/issues' 
		action: [:req | req isGetRequest 
			ifTrue: [ req url endsWithDigit 
				ifTrue: [self handleIssueDisplay: req] 
				ifFalse: [self handleIssueList: req.]]
			ifFalse: [req isPostRequest
				ifTrue: [self handleIssueCreation: req.]
				ifFalse: [self handleCloseIssue: req]]
		] methods: #('GET', 'POST','PATCH').
	self webServer errorHandler: [:error :socket | error pass]