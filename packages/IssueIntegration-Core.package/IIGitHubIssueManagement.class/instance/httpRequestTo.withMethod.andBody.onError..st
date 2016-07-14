as yet unclassified
httpRequestTo: aPath withMethod: aMethod andBody: aBody onError: aBlock
	| decorateRequest methodDictionary url requestBlock contentType |
	[ self webClient close ] on: Error do: [ self webClient destroy ].
	
	contentType := 'application/json'.
	url := 'https://api.github.com/' , aPath.
	decorateRequest := [ :request | request
		headerAt: 'Accept' put: 'application/vnd.github.v3+json';
		headerAt: 'Authorization' put: 'token ' , self loginKey ].
	
	methodDictionary := Dictionary 
		with: #GET -> [ self webClient httpGet: url do: decorateRequest ]
		with: #POST -> [ self webClient httpPost: url content: aBody type: contentType do: decorateRequest ]
		with: #PATCH -> [ self webClient httpPatch: url content: aBody type: contentType do: decorateRequest ].
		
	requestBlock := methodDictionary at: aMethod.
	^ requestBlock on: Error do: [ :error | Transcript showln: error. aBlock value ]