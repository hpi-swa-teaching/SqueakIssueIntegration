functionalities
notAValidOAuthToken: aWebRequest
	^ aWebRequest sendResponseCode: 403 content: '{
  "message": "Bad credentials",
  "documentation_url": "https://developer.github.com/v3"
}' type: 'application/json' do: [ :response | "Do not decorate Response because it is not authorized" ]
	