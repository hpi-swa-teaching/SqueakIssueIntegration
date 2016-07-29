opening
open
	| window |
	window := ToolBuilder default open: self new.
	window model window: window.
	^ window