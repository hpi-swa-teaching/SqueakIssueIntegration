private
createIndicatorFor: aClass method: aMethod andIsMeta: aBoolean
	| separator |
	separator := self getSeperatorForIsMeta: aBoolean.
	aMethod 
		ifEmpty: [ ^ self createIndicatorFor: aClass ]
		ifNotEmpty: [ ^ '[', aClass, separator, aMethod, ']' ]