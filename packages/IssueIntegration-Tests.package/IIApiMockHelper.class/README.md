The ApiMockHelper offers three methods to help test the IssueManagement reliably:

Call >>setUp in your test's >>setUp method to remove all configured repositories from the IssueManagement class and start the GitHubMockApiServer. Save the ApiMockHelper insinde an instance variable for later.

Call >>createMockIssueManagement during your test to create a mock issue management for the 'IssueIntegration-Tests' package. It will be configured to use the GitHubApiMockClient to redirect all requests to the GitHubApiMockServer.

Call >>tearDown in your test's >>tearDown method to stop the GitHubMockApiServer and restore the repositoryDictionary of the IssueManagement class.