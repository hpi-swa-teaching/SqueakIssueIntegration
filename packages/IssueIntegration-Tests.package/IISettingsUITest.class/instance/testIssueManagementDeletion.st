running
testIssueManagementDeletion
	| projectIdInput packageIndex saveButton saveAndQuitButton |
	packageIndex := self packageList getList 
		indexOf: (self packageList getList 
			detect: [ :package | package = 'IssueIntegration-Tests' ]).
	self packageList changeModelSelection: packageIndex .
	projectIdInput := self subject findByName: 'projectIdInput'.
	saveButton := self subject findByName: 'saveButton'.
	saveAndQuitButton := self subject findByName: 'saveAndQuitButton'.
	projectIdInput changeText: ''.
	projectIdInput acceptTextInModel.
	saveButton click.
	self assert: projectIdInput text equals: ''.
	self packageList changeModelSelection: 1.
	self packageList changeModelSelection: packageIndex.
	self assert: ((IIIssueManagement getIssueManagementFor: (self packageList getListItem: packageIndex)) isKindOf: IIEmptyIssueManagement).
	saveAndQuitButton click.
	self assert: subject owner isNil
	