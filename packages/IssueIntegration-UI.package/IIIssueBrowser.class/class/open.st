opening
open
	| window model |
	model := self new.
	window := ToolBuilder default open: model.
	model window: window.
	^ window