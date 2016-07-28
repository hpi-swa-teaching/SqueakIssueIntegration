user interface signals
validateProjectID
	| response |
	self apiClient oAuthToken: self loginKey.
	response := self apiClient 
		apiRequestTo: '/repos/', self projectID, '/issues'
		withMethod: #GET 
		andExpectedCode: 200 
		onError: [ self error: 'The provided projectID doesn''t match a GitHub repository.' ]