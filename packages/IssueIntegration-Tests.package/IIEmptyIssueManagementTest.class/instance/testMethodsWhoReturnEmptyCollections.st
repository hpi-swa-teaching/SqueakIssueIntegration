running
testMethodsWhoReturnEmptyCollections
	| methods arguments |
	methods := { #getIssues . #getIssuesForClass: . #getIssuesForMethod:class:isMeta: . #getMyIssuesForClass: . #getMyIssuesForMethod:class:isMeta: . #getLabels . #loadIssues . #loadLabels }.
	arguments := { 'arg1' . 'arg2' . 'arg3' }.
	methods do: [ :method | self assert: 
		(self issueManagement perform: method withEnoughArguments: arguments) isEmpty ]