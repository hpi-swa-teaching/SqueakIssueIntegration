user interface signals
setFormInIssuePackageBrowserWithProjectID: aProjectID loginKey: aLoginKey username: aUsername

	self ui projectIDLine theText: aProjectID.
	self ui loginKeyLine theText: aLoginKey.
	self ui usernameLine theText: aUsername