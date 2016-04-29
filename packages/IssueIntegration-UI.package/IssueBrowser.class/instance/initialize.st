as yet unclassified
initialize

	super initialize.

	self ui setupUi: self.	
	self setUpLists.
	
	self ui issueList connect: ( self ui issueList) signal: #currentTextChanged: to: self selector: #selectIssue: .
	