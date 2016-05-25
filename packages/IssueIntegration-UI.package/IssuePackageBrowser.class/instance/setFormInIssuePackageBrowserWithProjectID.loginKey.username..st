user interface signals
setFormInIssuePackageBrowserWithProjectID: aProjectID loginKey: aLoginKey username: aUsername
	self ui projectURLLine theText: aProjectID.
	self ui loginKeyLine theText: aLoginKey.
	self ui usernameLine theText: aUsername