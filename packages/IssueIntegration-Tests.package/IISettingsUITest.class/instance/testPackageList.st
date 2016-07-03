as yet unclassified
testPackageList
	self assert: self packageList getList equals: PackageOrganizer default packageNames sort.
	self assert: 0 equals: self packageList getCurrentSelectionIndex. 
	self packageList changeModelSelection: 1.
	self assert: 1 equals: self packageList getCurrentSelectionIndex.