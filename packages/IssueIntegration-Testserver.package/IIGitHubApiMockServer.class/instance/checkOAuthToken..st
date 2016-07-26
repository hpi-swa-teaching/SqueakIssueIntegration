functionalities
checkOAuthToken: aRequest
	^ (aRequest headerAt: 'Authorization' ifAbsent: [ '' ]) = ('token ', self class oAuthToken)