instance creation
newWith: anOAuthToken
	| apiClient |
	apiClient := self new.
	apiClient oAuthToken: anOAuthToken.
	^ apiClient