as yet unclassified
testPackageList
	self assert: PackageOrganizer default packageNames sort equals: self packageList getList.
	self assert: 0 equals: self packageList getCurrentSelectionIndex