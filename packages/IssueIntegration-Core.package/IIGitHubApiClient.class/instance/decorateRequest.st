requesting
decorateRequest
	^ [ :request | request
		headerAt: 'Accept' put: self acceptHeader;
		headerAt: 'Authorization' put: 'token ', self oAuthToken ]