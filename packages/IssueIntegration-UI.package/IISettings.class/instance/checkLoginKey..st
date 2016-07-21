user interface signals
checkLoginKey: loginKey
	| response |
	self apiClient oAuthToken: loginKey.
	response := self apiClient apiRequestTo: '/rate_limit' withMethod: #GET andExpectedCode: 200 onError: [self error: 'Could not connect to GitHub'].
	
	((response headerAt: 'X-OAuth-Scopes') includesSubString: 'public_repo')
		ifFalse: [ self error: 'Your Login Key does not have the right access rights. (Need to be public_repo)' ]