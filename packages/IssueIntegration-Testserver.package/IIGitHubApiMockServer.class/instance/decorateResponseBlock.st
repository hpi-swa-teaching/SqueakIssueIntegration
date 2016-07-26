functionalities
decorateResponseBlock
	^ [ :aWebResponse | aWebResponse headerAt: 'X-OAuth-Scopes' put: 'public_repo' ]