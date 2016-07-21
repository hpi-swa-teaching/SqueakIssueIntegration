as yet unclassified
testCreateIssueMenuEntryExists
	| list |
	list := self subject findByClass: PluggableListMorphPlus.
	"TODO: Right click the first list entry and check if there is a create issue link."