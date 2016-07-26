user interface signals
extractProjectIDFrom: aProjectURL
	"TODO: kontrollieren, dass auch wirklich auf ein GitHub Repo verwiesen wird"
	| projectID |
	('https://github.com/*' match: aProjectURL asString)
			ifTrue: [ projectID := aProjectURL copyFrom: 'https://github.com/*' size to: aProjectURL size ].
	('http://github.com/*' match: aProjectURL asString)
			ifTrue: [ projectID := aProjectURL copyFrom: 'http://github.com/*' size to: aProjectURL size ].
	('git@github.com:*' match: aProjectURL asString)
			ifTrue: [ projectID := aProjectURL copyFrom: 'git@github.com:*' size to: aProjectURL size ].
	('*.git' match: projectID asString)
			ifTrue: [ projectID := projectID copyFrom: 1 to: projectID size - '.git' size ].
	^ projectID ifNil: [ aProjectURL ] ifNotNil: [ projectID ]