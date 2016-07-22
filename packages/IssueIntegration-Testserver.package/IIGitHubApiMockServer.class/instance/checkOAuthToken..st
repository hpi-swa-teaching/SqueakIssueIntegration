as yet unclassified
checkOAuthToken: aRequest
	^ (aRequest headerAt: 'Authorization' ifAbsent: [ '' ]) = 'token i-am-not-a-key'