accessing
webClient
	^ webClient ifNil: [ self initializeWebClient ]