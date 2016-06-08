*IssueIntegration-Core
httpPatch: urlString content: patchData type: contentType
	"Fire off an HTTP patch request"

	^self httpDo:[:client| client httpPatch: urlString content: patchData type: contentType]
