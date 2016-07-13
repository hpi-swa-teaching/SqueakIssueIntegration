user interface signals
labels
	 ^ labels
		ifNil: [ self getLabelsOfRepo ]
		ifNotNil: [ labels ]