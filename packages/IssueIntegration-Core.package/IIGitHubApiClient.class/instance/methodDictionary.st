requesting
methodDictionary
	^ IdentityDictionary
		with: #GET -> [ :url | self webClient 
			httpGet: url do: self decorateRequest ]
		with: #POST -> [ :url :body | self webClient 
			httpPost: url content: body type: self contentType do: self decorateRequest ]
		with: #PATCH -> [ :url :body | self webClient 
			httpPatch: url content: body type: self contentType do: self decorateRequest ]