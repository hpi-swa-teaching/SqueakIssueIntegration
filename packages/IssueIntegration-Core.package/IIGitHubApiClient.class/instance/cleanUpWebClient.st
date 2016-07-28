requesting
cleanUpWebClient
	[ self webClient close ] on: Error do: [ self webClient destroy ]