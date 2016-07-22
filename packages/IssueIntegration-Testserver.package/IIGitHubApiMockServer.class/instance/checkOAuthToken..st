as yet unclassified
checkOAuthToken: aRequest
	^ (aRequest headerAt: 'Authorization' ifAbsent: [ '' ]) = ('token ', self class oAuthToken)