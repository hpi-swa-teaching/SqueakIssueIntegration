user interface signals
extractProjectIDFrom: aProjectURL
	"TODO: kontrollieren, dass auch wirklich auf ein GitHub Repo verwiesen wird"
	| projectID urlPatterns |
	urlPatterns := { 'https://github.com/*' . 'http://github.com/*' . 'git@github.com:*' }.
	urlPatterns do: [ :pattern | (pattern match: aProjectURL asString)
			ifTrue: [ projectID := aProjectURL copyFrom: pattern size to: aProjectURL size ]].
	('*.git' match: projectID asString)
			ifTrue: [ projectID := projectID copyFrom: 1 to: projectID size - '.git' size ].
	^ projectID ifNil: [ aProjectURL ] ifNotNil: [ projectID ]