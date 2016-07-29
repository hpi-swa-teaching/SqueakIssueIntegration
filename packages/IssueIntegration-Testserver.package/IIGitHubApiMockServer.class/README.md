The GitHubApiMockServer offers a mocked version of the GitHub API for testing purposes. It can be started using >>start. It will internally start a web server listening on port 8080 with a single repository and some dummy issues and labels configured. Try calling one of the following urls in your browser:
	- localhost:8080/rate_limit 
	- localhost:8080/repos/test-user/test-repo/issues
To stop the server, call >>stop.