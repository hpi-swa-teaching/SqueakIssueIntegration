as yet unclassified
labelsAsString
	| string |
	string := ''.
	self labels ifNotEmpty: [self labels do: [:element | 
			(element = self labels last)
				ifTrue: [string := string, element]
				ifFalse: [string := (string, element, ', ')]]].
	Transcript show: labels.
	^ string