issue creation
createIndicatorFor: aClass method: aMethod andIsMeta: aBoolean
	| separator indicator |
	separator := self getSeperatorForIsMeta: aBoolean.
	aMethod 
		ifEmpty: [ indicator := '[', aClass, ']' ]
		ifNotEmpty: [ indicator := '[', aClass, separator, aMethod, ']' ].
	^ indicator