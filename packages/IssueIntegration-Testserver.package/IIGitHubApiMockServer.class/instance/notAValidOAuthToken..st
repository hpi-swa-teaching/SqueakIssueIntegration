functionalities
notAValidOAuthToken: aWebRequest
	^ aWebRequest sendResponseCode: 403 
		content: self badCredentialsJson 
		type: self contentType 
		do: [ :response | "Do not decorate Response because it is not authorized" ]
	