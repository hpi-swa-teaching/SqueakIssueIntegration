*ProjectXX-Core-message list menu
openIssueCreator

	| ui |

	ui := IssueCreator new.
	ui methodName: self selectedMessageName.
	ui packageName: self selectedSystemCategory. 
	ui issueClassName: self selectedClassName.
	ui issueClassIsMeta: self metaClassIndicated.
	ui openInWindow