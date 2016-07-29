issue creation
sendEditIssue: anIssue requestWith: aJson onError: aBlock
	^ self apiClient 
		apiRequestTo: '/repos/', self projectID , '/issues/', anIssue number 
		withMethod: #PATCH 
		body: aJson asJsonString 
		andExpectedCode: 200
		onError: aBlock