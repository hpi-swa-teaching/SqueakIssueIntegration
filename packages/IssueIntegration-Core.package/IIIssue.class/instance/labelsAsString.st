converting
labelsAsString
	^ self labels reduce: [ :string :label | string, ', ', label ]