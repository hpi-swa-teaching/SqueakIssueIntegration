functionalities
decoratorFor: aWebRequest
	^ (self checkOAuthToken: aWebRequest)
			ifTrue: [ self decorateResponseBlock ]
			ifFalse: [ [ :response | ] ]