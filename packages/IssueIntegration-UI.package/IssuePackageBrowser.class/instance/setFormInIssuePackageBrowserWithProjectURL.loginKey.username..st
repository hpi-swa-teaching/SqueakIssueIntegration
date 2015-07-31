user interface signals
setFormInIssuePackageBrowserWithProjectURL: aProjectURL loginKey: aLoginKey username: aUsername
	self ui projectURLLine theText: aProjectURL.
	self ui loginKeyLine theText: aLoginKey.
	self ui usernameLine theText: aUsername