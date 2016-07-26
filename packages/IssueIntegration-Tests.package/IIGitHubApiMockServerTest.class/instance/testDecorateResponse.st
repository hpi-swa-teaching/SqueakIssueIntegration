running
testDecorateResponse
	| response |
	response := WebResponse protocol: '' code: ''.
	self apiServer decorateResponseBlock value: response.
	self assert: ((response headerAt: 'X-OAuth-Scopes') includesSubString: 'public_repo')