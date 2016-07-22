as yet unclassified
requestForMethod: aSymbol andPath: aPath requestBlock: aBlock
	| response request contentBegin |
	response := (ReadWriteStream on: '').
	request := WebRequest new stream: response.
	request headerAt: 'Authorization' put: 'token ', IIGitHubApiMockServer oAuthToken.
	request rawUrl: aPath.
	aBlock value: request.

	self apiServer perform: aSymbol with: request.
	
	response := response contents.
	contentBegin := response findString: (String crlf, String crlf).
	^ response copyFrom: contentBegin to: response size