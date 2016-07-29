running
testIssueManagementDeletion
	| projectIdInput packageIndex |
	packageIndex := self packageList getList 
		indexOf: (self packageList getList 
			detect: [ :package | package = 'IssueIntegration-Tests' ]).
	self packageList changeModelSelection: packageIndex .
	projectIdInput := (self subject findByName: 'projectIdInput')
		changeText: '';
		acceptTextInModel;
		yourself.
	(self subject findByName: 'saveButton') click.
	
	self assert: '' equals: projectIdInput text asString.
	self packageList 
		changeModelSelection: 1;
		changeModelSelection: packageIndex.
	self assert: ((IIIssueManagement getIssueManagementFor: 
		(self packageList getListItem: packageIndex)) isKindOf: IIEmptyIssueManagement)