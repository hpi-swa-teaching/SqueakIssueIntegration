as yet unclassified
example
	| x w r |
	WebServer allSubInstancesDo: [:i | i destroy].
"
	t := HTTPSocket httpProxyServer.
	p := HTTPSocket httpProxyPort.

	HTTPSocket httpProxyServer: 'localhost'.
	HTTPSocket httpProxyPort: '80'.
"
	x := GitHubApiServer new.
	x start.

	w := WebClient new.
	Transcript clear.
	r := (w httpGet: 'http://localhost/repos/test-user/test-repo').
	Transcript show: r.
	Transcript show: r content.

	x stop.
"
	HTTPSocket httpProxyServer: t.
	HTTPSocket httpProxyPort: p.
"