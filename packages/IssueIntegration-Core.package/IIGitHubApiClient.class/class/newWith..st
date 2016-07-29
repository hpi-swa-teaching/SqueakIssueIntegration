instance creation
newWith: anOAuthToken
	^ self new 
		oAuthToken: anOAuthToken;
		yourself