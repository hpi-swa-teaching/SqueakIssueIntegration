running
testIfOAuthTokenIsChecked
	| methodsToCheck |
	methodsToCheck := { #handleCloseIssue: . #handleEditIssue: . #handleIssueCreation: }.
	methodsToCheck do: [ :method | | response request |
		response := '' writeStream.
		request := WebRequest new stream: response; yourself.
		self 
			apiServer perform: method with: request;
			assert: (response contents includesSubString: 'Bad credentials') ]