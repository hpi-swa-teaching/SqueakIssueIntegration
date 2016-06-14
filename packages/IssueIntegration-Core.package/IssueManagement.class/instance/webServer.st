accessing
webServer
	
	webServer ifNil: [self initializeWebServer].
	^ webServer