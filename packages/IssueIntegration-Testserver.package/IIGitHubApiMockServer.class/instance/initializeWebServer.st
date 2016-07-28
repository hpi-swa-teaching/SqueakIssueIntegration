initialize-release
initializeWebServer
	self webServer 
		addService: '/repos/' , self class repoSlug, '/issues' 
			action: self determineIssuesHandler
			methods: #('GET' 'POST' 'PATCH');
		addService: '/repos/', self class repoSlug, '/labels' action: [ :req | self handleLabelList: req ];
		addService: '/rate_limit' action: [ :req | self handleRateLimit: req ];
		errorHandler: [ :error :socket | error pass ]