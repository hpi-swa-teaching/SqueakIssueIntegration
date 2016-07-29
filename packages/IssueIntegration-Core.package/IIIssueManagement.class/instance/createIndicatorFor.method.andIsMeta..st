private
createIndicatorFor: aClass method: aMethod andIsMeta: aBoolean
	^ aMethod 
		ifEmpty: [ self createIndicatorFor: aClass ]
		ifNotEmpty: [ '[', aClass, (self getSeperatorForIsMeta: aBoolean), aMethod, ']' ]