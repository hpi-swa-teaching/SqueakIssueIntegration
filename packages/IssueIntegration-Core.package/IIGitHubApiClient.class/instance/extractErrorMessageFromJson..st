requesting
extractErrorMessageFromJson: aResponse
	[ | json |
		json := Json readFrom: aResponse content readStream.
		^ json at: 'message' ifPresent: [ :message | ' - ', message ] ifAbsent: [ '' ]] 
	on: Error do: [ ^ ''
		"Seems like the GitHub API didn't even return valid json. 
		This might happen if GitHub is down or something is wrong
		with the internet connection" ]