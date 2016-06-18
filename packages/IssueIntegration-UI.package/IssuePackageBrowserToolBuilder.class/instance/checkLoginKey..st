user interface signals
checkLoginKey: loginKey
	| response |
	response := WebClient httpGet: 'https://api.github.com/rate_limit?access_token=', loginKey.
	((response headerAt: 'X-OAuth-Scopes') includesSubString: 'public_repo')
		ifFalse: [self error: 'Your Login Key does not have the right access rights. (Need to be public_repo)']