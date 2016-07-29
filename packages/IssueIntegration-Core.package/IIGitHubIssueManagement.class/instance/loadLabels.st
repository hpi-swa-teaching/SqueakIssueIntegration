issue accessing
loadLabels 
	| labels |
	labels := self sendLoadRequestFor: 'labels' onError: [ ^ OrderedCollection new ].
	^ (labels collect: [ :label | label name ]) asOrderedCollection