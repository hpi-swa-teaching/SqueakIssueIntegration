as yet unclassified
apiRequestTo: aPath withMethod: aMethod andBody: aBody andExpectedCode: aCode onError: aBlock
	| decorateRequest methodDictionary url requestBlock contentType response|
	[ self webClient close ] on: Error do: [ self webClient destroy ].
	
	contentType := 'application/json'.
	url := self generateUrlFromPath: aPath.
	decorateRequest := [ :request | request
		headerAt: 'Accept' put: 'application/vnd.github.v3+json';
		headerAt: 'Authorization' put: 'token ' , self loginKey ].
	
	methodDictionary := Dictionary 
		with: #GET -> [ self webClient httpGet: url do: decorateRequest ]
		with: #POST -> [ self webClient httpPost: url content: aBody type: contentType do: decorateRequest ]
		with: #PATCH -> [ self webClient httpPatch: url content: aBody type: contentType do: decorateRequest ].
		
	requestBlock := methodDictionary at: aMethod.
	response := requestBlock on: Error do: [ :error | Transcript showln: error. ^ aBlock value ].
	[self checkResponse: response shouldBe: aCode ] on: Error do: [ :error | Transcript showln: error. ^ aBlock value ]