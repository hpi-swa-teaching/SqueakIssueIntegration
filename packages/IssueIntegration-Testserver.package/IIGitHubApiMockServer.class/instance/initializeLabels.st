initialize-release
initializeLabels
	self labels: (OrderedCollection
		with: (Json readFrom: self testLabel1 readStream)
		with: (Json readFrom: self testLabel2 readStream))