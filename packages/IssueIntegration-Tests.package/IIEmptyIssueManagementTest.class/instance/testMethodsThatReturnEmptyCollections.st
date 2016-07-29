running
testMethodsThatReturnEmptyCollections
	| methods arguments |
	methods := { #getIssues . #getIssuesForClass: . #getIssuesForMethod:class:andIsMeta: . #getMyIssuesForClass: . #getMyIssuesForMethod:class:andIsMeta: . #getLabels . #loadIssues . #loadLabels }.
	arguments := { 'arg1' . 'arg2' . 'arg3' }.
	methods do: [ :method | self assert: 
		(self issueManagement perform: method withEnoughArguments: arguments) isEmpty ]