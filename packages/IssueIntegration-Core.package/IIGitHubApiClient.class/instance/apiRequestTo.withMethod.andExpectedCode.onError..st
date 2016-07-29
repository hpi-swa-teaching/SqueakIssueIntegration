requesting
apiRequestTo: aPath withMethod: aMethod andExpectedCode: aCode onError: aBlock
	^ self apiRequestTo: aPath 
		withMethod: aMethod 
		body: '' 
		andExpectedCode: aCode 
		onError: aBlock