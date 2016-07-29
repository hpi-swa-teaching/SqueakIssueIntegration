A GitHubApiClient represents the connection to the GitHub API. It sends requests using Squeak's WebClient and checks the response. To authenticate at the GitHub API, an OAuth-Token is needed. Use the >>newWith: method to create a new instance:

IIGitHubApiClient newWith: anOAuthToken
