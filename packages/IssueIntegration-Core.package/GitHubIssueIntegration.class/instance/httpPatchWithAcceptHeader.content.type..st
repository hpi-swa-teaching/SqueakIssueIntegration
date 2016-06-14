requests
httpPatchWithAcceptHeader: anURL content: aContent type: aType

	 ^self webClient httpPatch: anURL content: aContent type: aType do: [ :request | request headerAt: 'accept' put: 'application/vnd.github.v3+json' ]
