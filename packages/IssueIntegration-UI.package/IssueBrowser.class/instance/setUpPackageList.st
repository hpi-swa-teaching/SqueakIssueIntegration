as yet unclassified
setUpPackageList

	self activePackages: Dictionary new.
	PackageInfo allPackages select: ([ :package |
		(IssueManagement getIssueManagementFor: package name) hasValidRemote ]) thenDo: [ :package | 
			self activePackages 
				at: (IssueManagement getIssueManagementFor: package name) projectID asString 
				ifAbsentPut: package name].
	
	self activePackages 
		ifNotEmpty: [ ui activePackageList addTextList: (self activePackages keys).] 