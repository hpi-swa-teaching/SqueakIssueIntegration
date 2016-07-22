as yet unclassified
decorateResponseBlock
	^ [ :aWebResponse | aWebResponse headerAt: 'X-OAuth-Scopes' put: 'public_repo' ]