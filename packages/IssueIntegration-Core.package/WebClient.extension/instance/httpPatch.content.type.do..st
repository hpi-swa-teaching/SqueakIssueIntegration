*IssueIntegration-Core
httpPatch: urlString content: patchData type: contentType do: aBlock
	"PATCH the data to the given url"
	| request |
	self initializeFromUrl: urlString.
	request := self requestWithUrl: urlString.
	request 
		method: 'PATCH';
		headerAt: 'Content-Length' put: patchData size.
	contentType ifNotNil: [ request headerAt: 'Content-Type' put: contentType ].
	self userAgent ifNotNil: [ request headerAt: 'User-Agent' put: self userAgent ].
	aBlock value: request.
	^ self sendRequest: request content: patchData readStream size: patchData size