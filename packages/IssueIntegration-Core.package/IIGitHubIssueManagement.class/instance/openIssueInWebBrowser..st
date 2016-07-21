issue accessing
openIssueInWebBrowser: anIssue
	| webBrowser |
	webBrowser := WebBrowser default.
	webBrowser openOnUrl: 'https://github.com/', self projectID, '/issues/', anIssue number