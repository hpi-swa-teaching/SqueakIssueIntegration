requesting
apiRequestTo: aPath withMethod: aMethod body: aBody andExpectedCode: aCode onError: aBlock
	| url requestBlock response|
	self cleanUpWebClient.
	url := self generateUrlFromPath: aPath.
	requestBlock := self methodDictionary at: aMethod.
	response := [ requestBlock cull: url cull: aBody ] on: Error 
		do: [ :error | Transcript showln: error. ^ aBlock value ].
	[ self checkResponse: response shouldBe: aCode ] on: Error 
		do: [ :error | Transcript showln: error. ^ aBlock value ].
	^ response