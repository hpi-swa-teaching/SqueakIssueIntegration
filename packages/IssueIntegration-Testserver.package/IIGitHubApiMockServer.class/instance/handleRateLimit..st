functionalities
handleRateLimit: aWebRequest
	^ aWebRequest 
		send200Response: self rateLimitJson
		contentType: self contentType 
		do: (self decoratorFor: aWebRequest)