running
testCheckResponse
	| response errorDescription |
	errorDescription := 'Internal GitHub Error'.
	response := WebResponse protocol: 'HTTP/1.1' code: 404.
	response content: '{
"message": "' , errorDescription , '",
"documentation_url": "https://developer.github.com/v3"
}'.
	self should: [ self issueManagement checkResponse: response shouldBe: 200 ] 
		raise: Error
		whoseDescriptionIncludes: errorDescription
		description: 'GitHub error response wasn''t parsed correctly.'