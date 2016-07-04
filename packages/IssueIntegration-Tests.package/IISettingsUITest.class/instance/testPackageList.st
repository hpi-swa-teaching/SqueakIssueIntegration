as yet unclassified
testPackageList
	self assert: self packageList getList equals: PackageOrganizer default packageNames sort.
	self assert: 0 equals: self packageList getCurrentSelectionIndex