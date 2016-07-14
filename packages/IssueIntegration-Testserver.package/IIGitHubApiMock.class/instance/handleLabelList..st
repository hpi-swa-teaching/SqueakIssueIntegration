as yet unclassified
handleLabelList: aWebRequest
	^ aWebRequest 
		send200Response: (Json render: self labels) 
		contentType: 'application/json' 
		do: self decorateResponseBlock