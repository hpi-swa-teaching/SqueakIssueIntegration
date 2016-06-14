requests
httpGetWithAcceptHeader: anURL
	
	 ^self webClient httpGet: anURL do: [:request | request headerAt: 'accept' put: 'application/vnd.github.v3+json' ]