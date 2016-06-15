as yet unclassified
initialize

	super initialize.

	self ui setupUi: self.	
	self setUpPackageList.
	
	self activePackages ifNotEmpty: [ self selectPackage: self activePackages keys first ].
	
	self ui issueList connect: self ui issueList signal: #currentTextChanged: to: self selector: #selectIssue: .
	self ui activePackageList connect: self ui activePackageList signal: #currentTextChanged: to: self selector: #selectPackage: .
	