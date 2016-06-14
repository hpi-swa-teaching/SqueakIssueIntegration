requests
httpGetWithAcceptHeader: anURL

	 ^self webServer httpGet: anURL do: [:request | request at: 'Accept' put: 'application/vnd.github.v3+json' ]