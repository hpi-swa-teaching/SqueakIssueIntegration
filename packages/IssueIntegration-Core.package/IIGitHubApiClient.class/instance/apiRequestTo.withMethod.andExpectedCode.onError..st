as yet unclassified
apiRequestTo: aPath withMethod: aMethod andExpectedCode: aCode onError: aBlock
	^ self apiRequestTo: aPath withMethod: aMethod andBody: '' andExpectedCode: aCode onError: aBlock