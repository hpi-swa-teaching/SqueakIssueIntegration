user interface signals
generateToken
	| webBrowser |
	webBrowser := WebBrowser default.
	webBrowser openOnUrl: 'https://github.com/settings/tokens/new?description=Squeak%20Issue%20Management&scopes=public_repo'