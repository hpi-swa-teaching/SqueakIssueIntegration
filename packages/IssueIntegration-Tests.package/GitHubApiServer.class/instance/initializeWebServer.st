as yet unclassified
initializeWebServer
	self webServer addService: '/repos/' , self class repoSlug, '/issues' 
		action: [:req | req isGetRequest 
			ifTrue: [req send200Response: (Json render: self issues) contentType: 'application/json'] 
			ifFalse: [
				| newIssue content |
				content := Json readFrom: (ReadStream on: req content).
				newIssue := self createIssueJsonWithTitle: (content at: 'title') body: (content at: 'body') andAssignee: (content at: 'assignee').
				self issues add: newIssue.
		 		req send200Response: (Json render: newIssue) contentType: 'application/json' do: [:resp | resp protocol: 'HTTP/1.1' code: 201]
			]
		] methods: #('GET', 'POST').	
	self webServer errorHandler: [:error :socket | error pass]