requesting
decorateRequest
	^ [ :request | request
		headerAt: 'Accept' put: 'application/vnd.github.v3+json';
		headerAt: 'Authorization' put: 'token ' , self oAuthToken ]