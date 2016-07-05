as yet unclassified
handleRateLimit: aWebRequest
	^ aWebRequest 
		send200Response: self rateLimitContent 
		contentType: 'application/json' 
		do: self decorateResponseBlock