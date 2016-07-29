issue creation
sendCreateIssueRequestWith: aJson onError: aBlock
	^ self apiClient apiRequestTo: '/repos/', self projectID, '/issues' 
		withMethod: #POST 
		body: aJson asJsonString 
		andExpectedCode: 201
		onError: aBlock