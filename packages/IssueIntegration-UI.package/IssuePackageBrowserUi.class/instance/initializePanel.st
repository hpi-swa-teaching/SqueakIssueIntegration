ui - private
initializePanel
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	
	| unnamedMorph1 unnamedMorph2 unnamedMorph3 unnamedMorph4 |
	
	panel := UiContainer new.
	panel changeTableLayout.
	panel extent: (705@204).
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
	panel balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	panel color: (Color veryVeryLightGray).
	panel borderWidth: (0).
	panel borderStyle2: (#simple).
	panel borderColor: (Color black).
	panel setProperty: #objectName toValue: 'panel'.
	unnamedMorph1 := UiContainer new.
	unnamedMorph1 extent: (697@196).
	unnamedMorph1 position: (4@4).
	unnamedMorph1 hResizing: (#spaceFill).
	unnamedMorph1 vResizing: (#spaceFill).
	unnamedMorph1 minWidth: (2).
	unnamedMorph1 minHeight: (2).
	unnamedMorph1 cellInset: (4).
	unnamedMorph1 cellPositioning: (#center).
	unnamedMorph1 cellSpacing: (#none).
	unnamedMorph1 layoutInset: (4).
	unnamedMorph1 listCentering: (#topLeft).
	unnamedMorph1 listDirection: (#topToBottom).
	unnamedMorph1 listSpacing: (#none).
	unnamedMorph1 maxCellSize: (1073741823).
	unnamedMorph1 minCellSize: (0).
	unnamedMorph1 wrapCentering: (#topLeft).
	unnamedMorph1 wrapDirection: (#none).
	unnamedMorph1 frameFractions: (0@0 corner: 1@1).
	unnamedMorph1 frameOffsets: (0@0 corner: 0@0).
	unnamedMorph1 balloonText: ('').
	unnamedMorph1 balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.925)).
	unnamedMorph1 color: (Color transparent).
	unnamedMorph1 borderWidth: (0).
	unnamedMorph1 borderStyle2: (#simple).
	unnamedMorph1 borderColor: (Color black).
	loginKeyButton := UiPushButton new.
	loginKeyButton changeTableLayout.
	loginKeyButton extent: (113@20).
	loginKeyButton position: (315@120).
	loginKeyButton hResizing: (#shrinkWrap).
	loginKeyButton vResizing: (#shrinkWrap).
	loginKeyButton minWidth: (1).
	loginKeyButton minHeight: (1).
	loginKeyButton cellInset: (4).
	loginKeyButton cellPositioning: (#center).
	loginKeyButton cellSpacing: (#none).
	loginKeyButton layoutInset: (2@0 corner: 2@0).
	loginKeyButton listCentering: (#topLeft).
	loginKeyButton listDirection: (#leftToRight).
	loginKeyButton listSpacing: (#none).
	loginKeyButton maxCellSize: (1073741823).
	loginKeyButton minCellSize: (0).
	loginKeyButton wrapCentering: (#topLeft).
	loginKeyButton wrapDirection: (#none).
	loginKeyButton frameFractions: (0@0 corner: 1@1).
	loginKeyButton frameOffsets: (0@0 corner: 0@0).
	loginKeyButton balloonText: (nil).
	loginKeyButton balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.745)).
	loginKeyButton enabled: (true).
	loginKeyButton setProperty: #iconByDesigner toValue: 'nil'.
	loginKeyButton icon: (nil).
	loginKeyButton text: ('Create Login Key').
	loginKeyButton color: ((Color r: 0.8 g: 0.8 b: 0.8)).
	loginKeyButton checkable: (false).
	loginKeyButton checked: (false).
	loginKeyButton autoExclusive: (false).
	loginKeyButton setProperty: #objectName toValue: 'loginKeyButton'.
	unnamedMorph1 addChild: loginKeyButton.
	saveButton := UiPushButton new.
	saveButton changeTableLayout.
	saveButton extent: (57@20).
	saveButton position: (636@171).
	saveButton hResizing: (#shrinkWrap).
	saveButton vResizing: (#shrinkWrap).
	saveButton minWidth: (2).
	saveButton minHeight: (2).
	saveButton cellInset: (4).
	saveButton cellPositioning: (#center).
	saveButton cellSpacing: (#none).
	saveButton layoutInset: (2@0 corner: 2@0).
	saveButton listCentering: (#topLeft).
	saveButton listDirection: (#leftToRight).
	saveButton listSpacing: (#none).
	saveButton maxCellSize: (1073741823).
	saveButton minCellSize: (0).
	saveButton wrapCentering: (#topLeft).
	saveButton wrapDirection: (#none).
	saveButton frameFractions: (0@0 corner: 1@1).
	saveButton frameOffsets: (0@0 corner: 0@0).
	saveButton balloonText: (nil).
	saveButton balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	saveButton enabled: (true).
	saveButton setProperty: #iconByDesigner toValue: 'UiDiagonaIcons icon0245Normal'.
	saveButton icon: (UiDiagonaIcons icon0245Normal).
	saveButton text: ('Save').
	saveButton color: ((Color r: 0.8 g: 0.8 b: 0.8)).
	saveButton checkable: (false).
	saveButton checked: (false).
	saveButton autoExclusive: (false).
	saveButton setProperty: #objectName toValue: 'saveButton'.
	unnamedMorph1 addChild: saveButton.
	loginKeyLine := UiLineEdit new.
	loginKeyLine extent: (300@26).
	loginKeyLine position: (395@85).
	loginKeyLine hResizing: (#spaceFill).
	loginKeyLine vResizing: (#rigid).
	loginKeyLine minWidth: (2).
	loginKeyLine minHeight: (2).
	loginKeyLine cellInset: (0).
	loginKeyLine cellPositioning: (#center).
	loginKeyLine cellSpacing: (#none).
	loginKeyLine layoutInset: (0).
	loginKeyLine listCentering: (#topLeft).
	loginKeyLine listDirection: (#topToBottom).
	loginKeyLine listSpacing: (#none).
	loginKeyLine maxCellSize: (1073741823).
	loginKeyLine minCellSize: (0).
	loginKeyLine wrapCentering: (#topLeft).
	loginKeyLine wrapDirection: (#none).
	loginKeyLine frameFractions: (0@0 corner: 1@1).
	loginKeyLine frameOffsets: (0@0 corner: 0@0).
	loginKeyLine balloonText: ('').
	loginKeyLine balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.737)).
	loginKeyLine widgetResizable: (false).
	loginKeyLine horizontalScrollBarPolicy: (#alwaysOff).
	loginKeyLine verticalScrollBarPolicy: (#alwaysOff).
	loginKeyLine outerBorderWidth: (1).
	loginKeyLine scrollBarThickness: (9).
	loginKeyLine theText: ('').
	loginKeyLine readOnly: (false).
	loginKeyLine autoConvert: (false).
	loginKeyLine autoAccept: (false).
	loginKeyLine acceptOnFocusLost: (true).
	loginKeyLine scrollingMode: (#none).
	loginKeyLine scrollingLimit: (10).
	loginKeyLine helpText: ('').
	loginKeyLine hideCursor: (true).
	loginKeyLine setProperty: #objectName toValue: 'loginKeyLine'.
	unnamedMorph1 addChild: loginKeyLine.
	unnamedMorph2 := UiLabel new.
	unnamedMorph2 changeTableLayout.
	unnamedMorph2 extent: (63@18).
	unnamedMorph2 position: (315@90).
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
	unnamedMorph2 balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.725)).
	unnamedMorph2 text: ('Login Key:').
	unnamedMorph2 setProperty: #formByDesigner toValue: 'nil'.
	unnamedMorph2 form: (nil).
	unnamedMorph1 addChild: unnamedMorph2.
	usernameLine := UiLineEdit new.
	usernameLine extent: (300@26).
	usernameLine position: (395@50).
	usernameLine hResizing: (#spaceFill).
	usernameLine vResizing: (#rigid).
	usernameLine minWidth: (2).
	usernameLine minHeight: (2).
	usernameLine cellInset: (0).
	usernameLine cellPositioning: (#center).
	usernameLine cellSpacing: (#none).
	usernameLine layoutInset: (0).
	usernameLine listCentering: (#topLeft).
	usernameLine listDirection: (#topToBottom).
	usernameLine listSpacing: (#none).
	usernameLine maxCellSize: (1073741823).
	usernameLine minCellSize: (0).
	usernameLine wrapCentering: (#topLeft).
	usernameLine wrapDirection: (#none).
	usernameLine frameFractions: (0@0 corner: 1@1).
	usernameLine frameOffsets: (0@0 corner: 0@0).
	usernameLine balloonText: ('').
	usernameLine balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.729)).
	usernameLine widgetResizable: (false).
	usernameLine horizontalScrollBarPolicy: (#alwaysOff).
	usernameLine verticalScrollBarPolicy: (#alwaysOff).
	usernameLine outerBorderWidth: (1).
	usernameLine scrollBarThickness: (9).
	usernameLine theText: ('').
	usernameLine readOnly: (false).
	usernameLine autoConvert: (false).
	usernameLine autoAccept: (false).
	usernameLine acceptOnFocusLost: (true).
	usernameLine scrollingMode: (#none).
	usernameLine scrollingLimit: (10).
	usernameLine helpText: ('').
	usernameLine hideCursor: (true).
	usernameLine setProperty: #objectName toValue: 'usernameLine'.
	unnamedMorph1 addChild: usernameLine.
	unnamedMorph3 := UiLabel new.
	unnamedMorph3 changeTableLayout.
	unnamedMorph3 extent: (65@18).
	unnamedMorph3 position: (315@55).
	unnamedMorph3 hResizing: (#shrinkWrap).
	unnamedMorph3 vResizing: (#shrinkWrap).
	unnamedMorph3 minWidth: (2).
	unnamedMorph3 minHeight: (2).
	unnamedMorph3 cellInset: (0).
	unnamedMorph3 cellPositioning: (#center).
	unnamedMorph3 cellSpacing: (#none).
	unnamedMorph3 layoutInset: (0).
	unnamedMorph3 listCentering: (#topLeft).
	unnamedMorph3 listDirection: (#leftToRight).
	unnamedMorph3 listSpacing: (#none).
	unnamedMorph3 maxCellSize: (1073741823).
	unnamedMorph3 minCellSize: (0).
	unnamedMorph3 wrapCentering: (#topLeft).
	unnamedMorph3 wrapDirection: (#none).
	unnamedMorph3 frameFractions: (0@0 corner: 1@1).
	unnamedMorph3 frameOffsets: (0@0 corner: 0@0).
	unnamedMorph3 balloonText: ('').
	unnamedMorph3 balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.722)).
	unnamedMorph3 text: ('Username:').
	unnamedMorph3 setProperty: #formByDesigner toValue: 'nil'.
	unnamedMorph3 form: (nil).
	unnamedMorph1 addChild: unnamedMorph3.
	unnamedMorph4 := UiLabel new.
	unnamedMorph4 changeTableLayout.
	unnamedMorph4 extent: (47@18).
	unnamedMorph4 position: (315@20).
	unnamedMorph4 hResizing: (#shrinkWrap).
	unnamedMorph4 vResizing: (#shrinkWrap).
	unnamedMorph4 minWidth: (2).
	unnamedMorph4 minHeight: (2).
	unnamedMorph4 cellInset: (0).
	unnamedMorph4 cellPositioning: (#center).
	unnamedMorph4 cellSpacing: (#none).
	unnamedMorph4 layoutInset: (0).
	unnamedMorph4 listCentering: (#topLeft).
	unnamedMorph4 listDirection: (#leftToRight).
	unnamedMorph4 listSpacing: (#none).
	unnamedMorph4 maxCellSize: (1073741823).
	unnamedMorph4 minCellSize: (0).
	unnamedMorph4 wrapCentering: (#topLeft).
	unnamedMorph4 wrapDirection: (#none).
	unnamedMorph4 frameFractions: (0@0 corner: 1@1).
	unnamedMorph4 frameOffsets: (0@0 corner: 0@0).
	unnamedMorph4 balloonText: ('').
	unnamedMorph4 balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.725)).
	unnamedMorph4 text: ('Project:').
	unnamedMorph4 setProperty: #formByDesigner toValue: 'nil'.
	unnamedMorph4 form: (nil).
	unnamedMorph1 addChild: unnamedMorph4.
	projectURLLine := UiLineEdit new.
	projectURLLine extent: (300@26).
	projectURLLine position: (395@15).
	projectURLLine hResizing: (#spaceFill).
	projectURLLine vResizing: (#rigid).
	projectURLLine minWidth: (2).
	projectURLLine minHeight: (2).
	projectURLLine cellInset: (0).
	projectURLLine cellPositioning: (#center).
	projectURLLine cellSpacing: (#none).
	projectURLLine layoutInset: (0).
	projectURLLine listCentering: (#topLeft).
	projectURLLine listDirection: (#topToBottom).
	projectURLLine listSpacing: (#none).
	projectURLLine maxCellSize: (1073741823).
	projectURLLine minCellSize: (0).
	projectURLLine wrapCentering: (#topLeft).
	projectURLLine wrapDirection: (#none).
	projectURLLine frameFractions: (0@0 corner: 1@1).
	projectURLLine frameOffsets: (0@0 corner: 0@0).
	projectURLLine balloonText: (nil).
	projectURLLine balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.729)).
	projectURLLine widgetResizable: (false).
	projectURLLine horizontalScrollBarPolicy: (#alwaysOff).
	projectURLLine verticalScrollBarPolicy: (#alwaysOff).
	projectURLLine outerBorderWidth: (1).
	projectURLLine scrollBarThickness: (9).
	projectURLLine theText: ('').
	projectURLLine readOnly: (false).
	projectURLLine autoConvert: (false).
	projectURLLine autoAccept: (false).
	projectURLLine acceptOnFocusLost: (true).
	projectURLLine scrollingMode: (#none).
	projectURLLine scrollingLimit: (10).
	projectURLLine helpText: ('').
	projectURLLine hideCursor: (true).
	projectURLLine setProperty: #objectName toValue: 'projectURLLine'.
	unnamedMorph1 addChild: projectURLLine.
	packagesList := UiListWidget new.
	packagesList extent: (304@190).
	packagesList position: (4@2).
	packagesList hResizing: (#rigid).
	packagesList vResizing: (#rigid).
	packagesList minWidth: (2).
	packagesList minHeight: (2).
	packagesList cellInset: (0).
	packagesList cellPositioning: (#center).
	packagesList cellSpacing: (#none).
	packagesList layoutInset: (0).
	packagesList listCentering: (#topLeft).
	packagesList listDirection: (#topToBottom).
	packagesList listSpacing: (#none).
	packagesList maxCellSize: (1073741823).
	packagesList minCellSize: (0).
	packagesList wrapCentering: (#topLeft).
	packagesList wrapDirection: (#none).
	packagesList frameFractions: (0@0 corner: 1@1).
	packagesList frameOffsets: (0@0 corner: 0@0).
	packagesList balloonText: (nil).
	packagesList balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.729)).
	packagesList widgetResizable: (true).
	packagesList horizontalScrollBarPolicy: (#alwaysOff).
	packagesList verticalScrollBarPolicy: (#asNeeded).
	packagesList outerBorderWidth: (0).
	packagesList scrollBarThickness: (9).
	packagesList modelClass: (UiPropertyItemNode).
	packagesList horizontalHeaderVisible: (false).
	packagesList verticalHeaderVisible: (false).
	packagesList selectionBehavior: (#selectRows).
	packagesList selectionMode: (UiViewSingleSelection).
	packagesList listOrientation: (#default).
	packagesList hAlignment: (#left).
	packagesList vAlignment: (#top).
	packagesList setProperty: #objectName toValue: 'packagesList'.
	unnamedMorph1 addChild: packagesList.
	panel addChild: unnamedMorph1.
	panel setProperty: #uiClassName toValue: 'IssuePackageBrowser'.