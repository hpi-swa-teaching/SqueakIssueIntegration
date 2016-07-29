initialize-release
initializeWebServer
	self webServer: (WebServer new
		addService: '/repos/' , self class repoSlug, '/issues' 
			action: self determineIssuesHandler
			methods: #('GET' 'POST' 'PATCH');
		addService: '/repos/', self class repoSlug, '/labels' 
			action: [ :req | self handleLabelList: req ]
			methods: #('GET');
		addService: '/rate_limit' 
			action: [ :req | self handleRateLimit: req ]
			methods: #('GET');
		errorHandler: [ :error :socket | error pass ];
		yourself)