user interface signals
extractProjectIDFrom: aProjectURL
	| newProjectID urlPatterns |
	newProjectID := aProjectURL.
	urlPatterns := { 'https://github.com/*' . 'http://github.com/*' . 'git@github.com:*' }.
	urlPatterns do: [ :pattern | (pattern match: aProjectURL asString)
		ifTrue: [ newProjectID := aProjectURL copyFrom: pattern size to: aProjectURL size ]].
	('*.git' match: newProjectID asString)
		ifTrue: [ newProjectID := newProjectID copyFrom: 1 to: newProjectID size - '.git' size ].
	^ newProjectID