accessing
labelsSelected
	^ labelsSelected ifNil: [ labelsSelected := OrderedCollection new ]
	