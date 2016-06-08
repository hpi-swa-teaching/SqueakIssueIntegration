*IssueIntegration-Core
httpPatch: urlString content: patchData type: contentType
	"PATCH the data to the given url"

	^self httpPatch: urlString content: patchData type: contentType do: [:req]