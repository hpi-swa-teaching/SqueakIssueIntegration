# Squeak Issue Integration [![Build Status](https://travis-ci.org/hpi-swa-teaching/SqueakIssueIntegration.svg?branch=master)](https://travis-ci.org/hpi-swa-teaching/SqueakIssueIntegration) [![Coverage Status](https://coveralls.io/repos/github/hpi-swa-teaching/SqueakIssueIntegration/badge.svg?branch=master)](https://coveralls.io/github/hpi-swa-teaching/SqueakIssueIntegration?branch=master)

This is an Issue Integration for the programming environment
[Squeak](http://squeak.org/). It allows groups of developers to create, manage
and edit issues directly inside of the image. All issues are held and managed
by an Issue Management System like [GitHub](https://github.com).

## Features

Currently only GitHub is supported as an Issue Management System. 
GitHub Issues support title, body, assignee, labels. Closed Issues
are ignored by the system.

- Create Issues for methods and classes
- Create Issues right from the Debugger
- View all Issues by repository
- Indication of Issues related to a certain class or method directly inside the 
  system browser by exclamation icons (the icon is red for issues assigned to 
  you, orange otherwise)
- Edit and close Issues
- `Fix me` button to open a system browser with the class or method 
  the Issue is related to in focus  

## How to use

### Migration
In case you use an older version of the Issue Integration, namely `v0.1`, we 
recommend to execute the following code to remove deprecated links from the
menu bar:
```smalltalk
TheWorldMenu registry copy do: [ :each | (each first = 'Issue Package Browser ') ifTrue: [TheWorldMenu registry remove: each.]].
```

### Installation
Run the following code in a Workspace:
```smalltalk
{
Metacello new
    baseline: 'IssueIntegration';
    githubUser: 'hpi-swa-teaching'
    project: 'SqueakIssueIntegration'
    commitish: 'v1.0'
    path: 'packages'
}
do: [ :baseline | baseline get ];
do: [ :baseline | baseline
    onConflict: [ :ex | ex allow ];
    load: 'default' ].
```
### Set Up
Open the Issue Integration (`Apps` -> `Issue Integration`) and click on `Settings`.
The Settings window opens.
Then find the package you are working on. Enter the following information:
- The name of your github project e.g. `hpi-swa-teaching/SqueakIssueIntegration` 
  (or a direct link: `https://github.com/user/repo`)
- Your GitHub username. This is necessary to highlight issues assigned to you.
- An OAuth-Token. To authenticate you at the Issue Management System you need an
OAuth-Token. You can click the `Create new OAuth-Token` button to directly open
your webbrowser at GitHub's token creation page. If your repository is public,
leave everything as it is (`public_repo` scope checked), scroll down and hit 
the `Generate token` button. If your repository is private, make sure to also
check the `repo` scope. Copy the generated token and hit the `Save (and quit)`
button inside the Settings window.

### Create an Issue
To create an Issue you can right-click on a method or class in the System Browser or the
Debugger and select `create Issue` in the context menu *(the option only
appears in packages with a set up issue management)*. You can give it a 
title and optional description. If you want to assign the issue
directly to one of your team members you can enter their username in the
Issue Creator. Please note that you and the assignee both need push access 
to the repository for the assignment to work. You also need push access
to assign labels to the Issue.

### See existing Issues in the System Browser
All existing Issues for a method or class are indicated with a little 
exclamation icon next to the name *(if an issue is assigned to you the 
exclamation  icon indicates this by changing it's color to red)*. 
To show, edit or close them you can access all Issues of this method 
or class in its context-menu.

### See and edit Issues by repository inside the Issue Browser
Open the Issue Integration (`Apps` -> `Issue Integration`). Select the
repository and click through the list of issues. All changes you make to
issues are directly sent to GitHub and saved.


## Development
Pull Requests are welcome. Please make sure to run the tests locally before
pushing to the master branch. To run the tests, make sure your port `8080`
is not in use. It is used during tests to start a GitHub mock server to be
independent from your internet connection and GitHub's availability.
