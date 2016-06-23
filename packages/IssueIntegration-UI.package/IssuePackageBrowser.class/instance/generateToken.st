user interface signals
generateToken
	| browser |
	browser := WebBrowser default.
	browser ifNotNil: [browser openOnUrl: 'https://github.com/settings/tokens/new?description=Squeak%20Issue%20Management&scopes=public_repo'].