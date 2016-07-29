running
testPackageList
	self 
		assert: PackageOrganizer default packageNames sort equals: self packageList getList;
		assert: 0 equals: self packageList getCurrentSelectionIndex