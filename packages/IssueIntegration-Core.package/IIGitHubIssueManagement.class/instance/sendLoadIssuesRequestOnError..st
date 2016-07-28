issue creation
sendLoadIssuesRequestOnError: aBlock
	^ self apiClient 
		apiRequestTo: '/repos/', self projectID, '/issues' 
		withMethod: #GET 
		andExpectedCode: 200
		onError: aBlock