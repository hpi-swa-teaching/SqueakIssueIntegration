accessing
getInstance
	^ Instance ifNil: [ Instance := self new ]