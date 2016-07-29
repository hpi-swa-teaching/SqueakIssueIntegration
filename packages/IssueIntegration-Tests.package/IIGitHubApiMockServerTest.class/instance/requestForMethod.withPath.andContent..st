requesting
requestForMethod: aSymbol withPath: aPath andContent: aString
	| response request contentBegin |
	response := ReadWriteStream on: ''.
	request := WebRequest new 
		stream: response;
		headerAt: 'Authorization' put: 'token ', IIGitHubApiMockServer oAuthToken;
		rawUrl: aPath;
		content: aString;
		yourself.

	self apiServer perform: aSymbol with: request.
	
	response := response contents.
	contentBegin := response findString: (String crlf, String crlf).
	^ response copyFrom: contentBegin to: response size