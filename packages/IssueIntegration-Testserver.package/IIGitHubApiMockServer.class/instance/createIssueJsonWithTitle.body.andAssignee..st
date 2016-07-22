as yet unclassified
createIssueJsonWithTitle: title body: body andAssignee: assignee
	| newIssue |
	self issueNumber: self issueNumber + 1.
	newIssue := Json readFrom: (ReadStream on: '{
  "id": 1,
  "url": "https://api.github.com/repos/', self class repoSlug, '/issues/', self issueNumber, '",
  "repository_url": "https://api.github.com/repos/', self class repoSlug, '",
  "labels_url": "https://api.github.com/repos/', self class repoSlug, '/issues/', self issueNumber, '/labels{/name}",
  "comments_url": "https://api.github.com/repos/', self class repoSlug, '/issues/', self issueNumber, '/comments",
  "events_url": "https://api.github.com/repos/', self class repoSlug, '/issues/', self issueNumber, '/events",
  "html_url": "https://github.com/', self class repoSlug, '/issues/', self issueNumber, '",
  "number": ', self issueNumber, ',
  "state": "open",
  "title": "', title , '",
  "body": "', body, '",
  "user": {
    "login": "', assignee, '",
    "id": 1,
    "avatar_url": "https://github.com/images/error/', assignee, '_happy.gif",
    "gravatar_id": "",
    "url": "https://api.github.com/users/', assignee, '",
    "html_url": "https://github.com/', assignee, '",
    "followers_url": "https://api.github.com/users/', assignee, '/followers",
    "following_url": "https://api.github.com/users/', assignee, '/following{/other_user}",
    "gists_url": "https://api.github.com/users/', assignee, '/gists{/gist_id}",
    "starred_url": "https://api.github.com/users/', assignee, '/starred{/owner}{/repo}",
    "subscriptions_url": "https://api.github.com/users/', assignee, '/subscriptions",
    "organizations_url": "https://api.github.com/users/', assignee, '/orgs",
    "repos_url": "https://api.github.com/users/', assignee, '/repos",
    "events_url": "https://api.github.com/users/', assignee, '/events{/privacy}",
    "received_events_url": "https://api.github.com/users/', assignee, '/received_events",
    "type": "User",
    "site_admin": false
  },
  "labels": [
    {
      "url": "https://api.github.com/repos/', self class repoSlug, '/labels/bug",
      "name": "bug",
      "color": "f29513"
    }
  ],
  "assignee": {
    "login": "', assignee, '",
    "id": 1,
    "avatar_url": "https://github.com/images/error/', assignee, '_happy.gif",
    "gravatar_id": "",
    "url": "https://api.github.com/users/', assignee, '",
    "html_url": "https://github.com/', assignee, '",
    "followers_url": "https://api.github.com/users/', assignee, '/followers",
    "following_url": "https://api.github.com/users/', assignee, '/following{/other_user}",
    "gists_url": "https://api.github.com/users/', assignee, '/gists{/gist_id}",
    "starred_url": "https://api.github.com/users/', assignee, '/starred{/owner}{/repo}",
    "subscriptions_url": "https://api.github.com/users/', assignee, '/subscriptions",
    "organizations_url": "https://api.github.com/users/', assignee, '/orgs",
    "repos_url": "https://api.github.com/users/', assignee, '/repos",
    "events_url": "https://api.github.com/users/', assignee, '/events{/privacy}",
    "received_events_url": "https://api.github.com/users/', assignee, '/received_events",
    "type": "User",
    "site_admin": false
  },
  "milestone": {
    "url": "https://api.github.com/repos/', self class repoSlug, '/milestones/1",
    "html_url": "https://github.com/', self class repoSlug, '/milestones/v1.0",
    "labels_url": "https://api.github.com/repos/', self class repoSlug, '/milestones/1/labels",
    "id": 1002604,
    "number": 1,
    "state": "open",
    "title": "v1.0",
    "description": "Tracking milestone for version 1.0",
    "creator": {
      "login": "', assignee, '",
      "id": 1,
      "avatar_url": "https://github.com/images/error/', assignee, '_happy.gif",
      "gravatar_id": "",
      "url": "https://api.github.com/users/', assignee, '",
      "html_url": "https://github.com/', assignee, '",
      "followers_url": "https://api.github.com/users/', assignee, '/followers",
      "following_url": "https://api.github.com/users/', assignee, '/following{/other_user}",
      "gists_url": "https://api.github.com/users/', assignee, '/gists{/gist_id}",
      "starred_url": "https://api.github.com/users/', assignee, '/starred{/owner}{/repo}",
      "subscriptions_url": "https://api.github.com/users/', assignee, '/subscriptions",
      "organizations_url": "https://api.github.com/users/', assignee, '/orgs",
      "repos_url": "https://api.github.com/users/', assignee, '/repos",
      "events_url": "https://api.github.com/users/', assignee, '/events{/privacy}",
      "received_events_url": "https://api.github.com/users/', assignee, '/received_events",
      "type": "User",
      "site_admin": false
    },
    "open_issues": 4,
    "closed_issues": 8,
    "created_at": "2011-04-10T20:09:31Z",
    "updated_at": "2014-03-03T18:58:10Z",
    "closed_at": "2013-02-12T13:22:01Z",
    "due_on": "2012-10-09T23:39:01Z"
  },
  "locked": false,
  "comments": 0,
  "pull_request": {
    "url": "https://api.github.com/repos/', self class repoSlug, '/pulls/', self issueNumber, '",
    "html_url": "https://github.com/', self class repoSlug, '/pull/', self issueNumber, '",
    "diff_url": "https://github.com/', self class repoSlug, '/pull/', self issueNumber, '.diff",
    "patch_url": "https://github.com/', self class repoSlug, '/pull/', self issueNumber, '.patch"
  },
  "closed_at": null,
  "created_at": "2011-04-22T13:33:48Z",
  "updated_at": "2011-04-22T13:33:48Z",
  "closed_by": {
    "login": "', assignee, '",
    "id": 1,
    "avatar_url": "https://github.com/images/error/', assignee, '_happy.gif",
    "gravatar_id": "",
    "url": "https://api.github.com/users/', assignee, '",
    "html_url": "https://github.com/', assignee, '",
    "followers_url": "https://api.github.com/users/', assignee, '/followers",
    "following_url": "https://api.github.com/users/', assignee, '/following{/other_user}",
    "gists_url": "https://api.github.com/users/', assignee, '/gists{/gist_id}",
    "starred_url": "https://api.github.com/users/', assignee, '/starred{/owner}{/repo}",
    "subscriptions_url": "https://api.github.com/users/', assignee, '/subscriptions",
    "organizations_url": "https://api.github.com/users/', assignee, '/orgs",
    "repos_url": "https://api.github.com/users/', assignee, '/repos",
    "events_url": "https://api.github.com/users/', assignee, '/events{/privacy}",
    "received_events_url": "https://api.github.com/users/', assignee, '/received_events",
    "type": "User",
    "site_admin": false
  }
}').
	self issues add: newIssue.
	^ newIssue