accessing
selectedPackage: aPackageString
	selectedPackage := aPackageString.
	self changed: #selectedPackage.
	self changed: #projectID.
	self changed: #loginKey.
	self changed: #username