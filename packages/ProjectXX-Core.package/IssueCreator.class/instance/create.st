as yet unclassified
create

|title body assignee |
	
title:= self ui titleLine theText.
body:= self ui descriptionField theText.
assignee:= self ui assigneeLine theText.

IssueManagement createIssueWithTitle: title AndBody: body ForMethod: issueClassName,'/',methodName AndAssignee: assignee  InPackage: packageName.
self window delete.
self delete