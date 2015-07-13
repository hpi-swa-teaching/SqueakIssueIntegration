ui - private
initializePanel
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	
	| unnamedMorph1 unnamedMorph2 |
	
	panel := UiContainer new.
	panel extent: (450@235).
	panel position: (0@0).
	panel hResizing: (#rigid).
	panel vResizing: (#rigid).
	panel minWidth: (2).
	panel minHeight: (2).
	panel cellInset: (4).
	panel cellPositioning: (#center).
	panel cellSpacing: (#none).
	panel layoutInset: (4).
	panel listCentering: (#topLeft).
	panel listDirection: (#topToBottom).
	panel listSpacing: (#none).
	panel maxCellSize: (1073741823).
	panel minCellSize: (0).
	panel wrapCentering: (#topLeft).
	panel wrapDirection: (#none).
	panel frameFractions: (0@0 corner: 1@1).
	panel frameOffsets: (0@0 corner: 0@0).
	panel balloonText: ('').
	panel balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.722)).
	panel color: (Color veryVeryLightGray).
	panel borderWidth: (0).
	panel borderStyle2: (#simple).
	panel borderColor: (Color black).
	panel setProperty: #objectName toValue: 'panel'.
	createButton := UiPushButton new.
	createButton changeTableLayout.
	createButton extent: (46@20).
	createButton position: (390@205).
	createButton hResizing: (#shrinkWrap).
	createButton vResizing: (#shrinkWrap).
	createButton minWidth: (2).
	createButton minHeight: (2).
	createButton cellInset: (4).
	createButton cellPositioning: (#center).
	createButton cellSpacing: (#none).
	createButton layoutInset: (2@0 corner: 2@0).
	createButton listCentering: (#topLeft).
	createButton listDirection: (#leftToRight).
	createButton listSpacing: (#none).
	createButton maxCellSize: (1073741823).
	createButton minCellSize: (0).
	createButton wrapCentering: (#topLeft).
	createButton wrapDirection: (#none).
	createButton frameFractions: (0@0 corner: 1@1).
	createButton frameOffsets: (0@0 corner: 0@0).
	createButton balloonText: ('').
	createButton balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.729)).
	createButton enabled: (true).
	createButton setProperty: #iconByDesigner toValue: 'nil'.
	createButton icon: (nil).
	createButton text: ('create').
	createButton color: ((Color r: 0.8 g: 0.8 b: 0.8)).
	createButton checkable: (false).
	createButton checked: (false).
	createButton autoExclusive: (false).
	createButton setProperty: #objectName toValue: 'createButton'.
	panel addChild: createButton.
	unnamedMorph1 := UiLabel new.
	unnamedMorph1 changeTableLayout.
	unnamedMorph1 extent: (72@18).
	unnamedMorph1 position: (10@68).
	unnamedMorph1 hResizing: (#shrinkWrap).
	unnamedMorph1 vResizing: (#shrinkWrap).
	unnamedMorph1 minWidth: (2).
	unnamedMorph1 minHeight: (2).
	unnamedMorph1 cellInset: (0).
	unnamedMorph1 cellPositioning: (#center).
	unnamedMorph1 cellSpacing: (#none).
	unnamedMorph1 layoutInset: (0).
	unnamedMorph1 listCentering: (#topLeft).
	unnamedMorph1 listDirection: (#leftToRight).
	unnamedMorph1 listSpacing: (#none).
	unnamedMorph1 maxCellSize: (1073741823).
	unnamedMorph1 minCellSize: (0).
	unnamedMorph1 wrapCentering: (#topLeft).
	unnamedMorph1 wrapDirection: (#none).
	unnamedMorph1 frameFractions: (0@0 corner: 1@1).
	unnamedMorph1 frameOffsets: (0@0 corner: 0@0).
	unnamedMorph1 balloonText: ('').
	unnamedMorph1 balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.733)).
	unnamedMorph1 text: ('Description:').
	unnamedMorph1 setProperty: #formByDesigner toValue: 'nil'.
	unnamedMorph1 form: (nil).
	panel addChild: unnamedMorph1.
	descriptionField := UiTextEdit new.
	descriptionField extent: (350@130).
	descriptionField position: (88@65).
	descriptionField hResizing: (#rigid).
	descriptionField vResizing: (#rigid).
	descriptionField minWidth: (2).
	descriptionField minHeight: (2).
	descriptionField cellInset: (0).
	descriptionField cellPositioning: (#center).
	descriptionField cellSpacing: (#none).
	descriptionField layoutInset: (0).
	descriptionField listCentering: (#topLeft).
	descriptionField listDirection: (#topToBottom).
	descriptionField listSpacing: (#none).
	descriptionField maxCellSize: (1073741823).
	descriptionField minCellSize: (0).
	descriptionField wrapCentering: (#topLeft).
	descriptionField wrapDirection: (#none).
	descriptionField frameFractions: (0@0 corner: 1@1).
	descriptionField frameOffsets: (0@0 corner: 0@0).
	descriptionField balloonText: (nil).
	descriptionField balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.741)).
	descriptionField widgetResizable: (true).
	descriptionField horizontalScrollBarPolicy: (#alwaysOff).
	descriptionField verticalScrollBarPolicy: (#asNeeded).
	descriptionField outerBorderWidth: (1).
	descriptionField scrollBarThickness: (9).
	descriptionField theText: ('').
	descriptionField readOnly: (false).
	descriptionField autoConvert: (false).
	descriptionField autoAccept: (false).
	descriptionField acceptOnFocusLost: (false).
	descriptionField scrollingMode: (#none).
	descriptionField scrollingLimit: (10).
	descriptionField setProperty: #objectName toValue: 'descriptionField'.
	panel addChild: descriptionField.
	assigneeLine := UiLineEdit new.
	assigneeLine extent: (150@25).
	assigneeLine position: (88@35).
	assigneeLine hResizing: (#spaceFill).
	assigneeLine vResizing: (#rigid).
	assigneeLine minWidth: (2).
	assigneeLine minHeight: (2).
	assigneeLine cellInset: (0).
	assigneeLine cellPositioning: (#center).
	assigneeLine cellSpacing: (#none).
	assigneeLine layoutInset: (0).
	assigneeLine listCentering: (#topLeft).
	assigneeLine listDirection: (#topToBottom).
	assigneeLine listSpacing: (#none).
	assigneeLine maxCellSize: (1073741823).
	assigneeLine minCellSize: (0).
	assigneeLine wrapCentering: (#topLeft).
	assigneeLine wrapDirection: (#none).
	assigneeLine frameFractions: (0@0 corner: 1@1).
	assigneeLine frameOffsets: (0@0 corner: 0@0).
	assigneeLine balloonText: (nil).
	assigneeLine balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.741)).
	assigneeLine widgetResizable: (false).
	assigneeLine horizontalScrollBarPolicy: (#alwaysOff).
	assigneeLine verticalScrollBarPolicy: (#alwaysOff).
	assigneeLine outerBorderWidth: (1).
	assigneeLine scrollBarThickness: (9).
	assigneeLine theText: ('').
	assigneeLine readOnly: (false).
	assigneeLine autoConvert: (false).
	assigneeLine autoAccept: (false).
	assigneeLine acceptOnFocusLost: (true).
	assigneeLine scrollingMode: (#none).
	assigneeLine scrollingLimit: (10).
	assigneeLine helpText: ('').
	assigneeLine hideCursor: (true).
	assigneeLine setProperty: #objectName toValue: 'assigneeLine'.
	panel addChild: assigneeLine.
	titleLine := UiLineEdit new.
	titleLine extent: (350@25).
	titleLine position: (88@5).
	titleLine hResizing: (#spaceFill).
	titleLine vResizing: (#rigid).
	titleLine minWidth: (2).
	titleLine minHeight: (2).
	titleLine cellInset: (0).
	titleLine cellPositioning: (#center).
	titleLine cellSpacing: (#none).
	titleLine layoutInset: (0).
	titleLine listCentering: (#topLeft).
	titleLine listDirection: (#topToBottom).
	titleLine listSpacing: (#none).
	titleLine maxCellSize: (1073741823).
	titleLine minCellSize: (0).
	titleLine wrapCentering: (#topLeft).
	titleLine wrapDirection: (#none).
	titleLine frameFractions: (0@0 corner: 1@1).
	titleLine frameOffsets: (0@0 corner: 0@0).
	titleLine balloonText: (nil).
	titleLine balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.741)).
	titleLine widgetResizable: (false).
	titleLine horizontalScrollBarPolicy: (#alwaysOff).
	titleLine verticalScrollBarPolicy: (#alwaysOff).
	titleLine outerBorderWidth: (1).
	titleLine scrollBarThickness: (9).
	titleLine theText: ('').
	titleLine readOnly: (false).
	titleLine autoConvert: (false).
	titleLine autoAccept: (false).
	titleLine acceptOnFocusLost: (true).
	titleLine scrollingMode: (#none).
	titleLine scrollingLimit: (10).
	titleLine helpText: ('').
	titleLine hideCursor: (true).
	titleLine setProperty: #objectName toValue: 'titleLine'.
	panel addChild: titleLine.
	assigneeLabel := UiLabel new.
	assigneeLabel changeTableLayout.
	assigneeLabel extent: (58@18).
	assigneeLabel position: (10@38).
	assigneeLabel hResizing: (#shrinkWrap).
	assigneeLabel vResizing: (#shrinkWrap).
	assigneeLabel minWidth: (2).
	assigneeLabel minHeight: (2).
	assigneeLabel cellInset: (0).
	assigneeLabel cellPositioning: (#center).
	assigneeLabel cellSpacing: (#none).
	assigneeLabel layoutInset: (0).
	assigneeLabel listCentering: (#topLeft).
	assigneeLabel listDirection: (#leftToRight).
	assigneeLabel listSpacing: (#none).
	assigneeLabel maxCellSize: (1073741823).
	assigneeLabel minCellSize: (0).
	assigneeLabel wrapCentering: (#topLeft).
	assigneeLabel wrapDirection: (#none).
	assigneeLabel frameFractions: (0@0 corner: 1@1).
	assigneeLabel frameOffsets: (0@0 corner: 0@0).
	assigneeLabel balloonText: ('').
	assigneeLabel balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.722)).
	assigneeLabel text: ('Assignee:').
	assigneeLabel setProperty: #formByDesigner toValue: 'nil'.
	assigneeLabel form: (nil).
	assigneeLabel setProperty: #objectName toValue: 'assigneeLabel'.
	panel addChild: assigneeLabel.
	unnamedMorph2 := UiLabel new.
	unnamedMorph2 changeTableLayout.
	unnamedMorph2 extent: (29@18).
	unnamedMorph2 position: (10@8).
	unnamedMorph2 hResizing: (#shrinkWrap).
	unnamedMorph2 vResizing: (#shrinkWrap).
	unnamedMorph2 minWidth: (2).
	unnamedMorph2 minHeight: (2).
	unnamedMorph2 cellInset: (0).
	unnamedMorph2 cellPositioning: (#center).
	unnamedMorph2 cellSpacing: (#none).
	unnamedMorph2 layoutInset: (0).
	unnamedMorph2 listCentering: (#topLeft).
	unnamedMorph2 listDirection: (#leftToRight).
	unnamedMorph2 listSpacing: (#none).
	unnamedMorph2 maxCellSize: (1073741823).
	unnamedMorph2 minCellSize: (0).
	unnamedMorph2 wrapCentering: (#topLeft).
	unnamedMorph2 wrapDirection: (#none).
	unnamedMorph2 frameFractions: (0@0 corner: 1@1).
	unnamedMorph2 frameOffsets: (0@0 corner: 0@0).
	unnamedMorph2 balloonText: ('').
	unnamedMorph2 balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.737)).
	unnamedMorph2 text: ('Title:').
	unnamedMorph2 setProperty: #formByDesigner toValue: 'nil'.
	unnamedMorph2 form: (nil).
	panel addChild: unnamedMorph2.
	panel setProperty: #uiClassName toValue: 'IssueCreator'.