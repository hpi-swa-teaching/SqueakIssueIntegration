issue accessing
getSeperatorForIsMeta: aBoolean.
	^ aBoolean
		ifTrue: [ self class metaClassAndMethodSeparator ]
		ifFalse: [ self class classAndMethodSeparator ]