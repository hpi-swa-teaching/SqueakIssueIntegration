user interface signals
validateProjectID
	self apiClient 
		oAuthToken: self loginKey;
		apiRequestTo: '/repos/', self projectID, '/issues'
			withMethod: #GET 
			andExpectedCode: 200 
			onError: [ self error: 'The provided projectID doesn''t match a GitHub repository.' ]