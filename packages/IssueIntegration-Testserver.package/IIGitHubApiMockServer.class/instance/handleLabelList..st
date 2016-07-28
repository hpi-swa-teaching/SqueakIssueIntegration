functionalities
handleLabelList: aWebRequest
	^ aWebRequest 
		send200Response: (Json render: self labels) 
		contentType: self contentType
		do: (self decoratorFor: aWebRequest)