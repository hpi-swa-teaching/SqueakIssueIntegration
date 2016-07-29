issue accessing
sendLoadRequestFor: issuesOrLabels onError: aBlock
	^ Json readFrom: (self apiClient 
		apiRequestTo: '/repos/', self projectID , '/', issuesOrLabels, '?per_page=100'
			withMethod: #GET 
			andExpectedCode: 200 
			onError: aBlock)
		content readStream