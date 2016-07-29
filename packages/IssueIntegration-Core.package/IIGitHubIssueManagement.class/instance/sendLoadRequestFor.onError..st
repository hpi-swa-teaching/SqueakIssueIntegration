issue accessing
sendLoadRequestFor: issuesOrLabels onError: aBlock
	| response |
	response := self apiClient 
		apiRequestTo: '/repos/', self projectID , '/', issuesOrLabels, '?per_page=100'
		withMethod: #GET 
		andExpectedCode: 200 
		onError: aBlock.
	^ Json readFrom: response content readStream