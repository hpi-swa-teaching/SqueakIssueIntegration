as yet unclassified
initializeWebServer
	self webServer addService: '/repos/' , self class repoSlug, '/issues' 
		action: [:req | req isGetRequest 
			ifTrue: [ req url endsWithDigit 
				ifTrue: [self handleIssueDisplay: req] 
				ifFalse: [self handleIssueList: req.]]
			ifFalse: [self handleIssueCreation: req.]
		] methods: #('GET', 'POST').	
	self webServer errorHandler: [:error :socket | error pass]