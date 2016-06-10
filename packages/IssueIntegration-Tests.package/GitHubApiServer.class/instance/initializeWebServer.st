as yet unclassified
initializeWebServer
	self webServer addService: '/repos/' , self class repoSlug action: [:req | req send200Response: 'OK'] methods: #('GET', 'POST', 'CONNECT').
	self webServer errorHandler: [:error :socket | error pass]