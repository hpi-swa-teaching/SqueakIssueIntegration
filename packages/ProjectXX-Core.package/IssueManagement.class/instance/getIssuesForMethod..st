as yet unclassified
getIssuesForMethod: methodName
	
	| issues issuesForMethod |

	issues := self getIssues.
	issuesForMethod := Set new.
	"issues do: [ :issue | Transcript show: issue title; cr. ]."
	"matchesRegex: '\d+'"
	"folgendes findet keine issues, da man in einer regex (zumindest nicht so) auf den inhalt einer variable testen kann..."
	issues do: [ :issue | (issue title matchesRegex: '[methodName]') 
	"issues do: [ :issue | (issue title contains: ['[',methodName,']']) " "<- würde ich lieber machen, aber contains wirft fehler..."
		ifTrue: [  Transcript show: issue title; cr. issuesForMethod add: issue] ].

	^ issuesForMethod.