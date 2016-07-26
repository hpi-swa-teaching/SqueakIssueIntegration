running
testIfOAuthTokenIsChecked
	| request response methodsToCheck |
	methodsToCheck := { #handleCloseIssue: . #handleEditIssue: . #handleIssueCreation: }.
	methodsToCheck do: [ :method | response := (WriteStream on: '').
		request := WebRequest new stream: response.
		self apiServer perform: method with: request.
		self assert: (response contents includesSubString: 'Bad credentials') ]