accessing
loadLabels 
	| response labels labelsJson |
	labels := OrderedCollection new.
	response := self apiClient apiRequestTo: '/repos/', self projectID , '/labels' withMethod: #GET andExpectedCode: 200 onError: [ ^ labels ].

	labelsJson := Json readFrom: response content readStream. 
	labelsJson do: [ :label | labels add: (label at: 'name') ].
	^ labels