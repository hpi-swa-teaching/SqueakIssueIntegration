error handling
checkResponse: aResponse shouldBe: aNumber
	
	| code |
	code := aResponse code.
	
	code = aNumber ifTrue: [ ^self ].
	^ self error: code asString, ' - ', (WebResponse statusCodeAt: code) asString,
		' | for project: ', self projectURL, ' in ', thisContext sender.