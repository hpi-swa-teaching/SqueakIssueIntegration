issue accessing
openIssueInBrowser: anIssue
	| webBrowser |
	webBrowser := WebBrowser default.
	webBrowser ifNotNil: [webBrowser openOnUrl: 'https://github.com/', self projectID, '/issues/', anIssue number].