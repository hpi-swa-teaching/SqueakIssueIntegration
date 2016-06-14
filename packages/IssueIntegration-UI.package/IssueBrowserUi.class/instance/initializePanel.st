ui - private
initializePanel
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	
	|  |
	
	panel := UiContainer new.
	panel extent: (560@320).
	panel position: (0@0).
	panel hResizing: (#rigid).
	panel vResizing: (#rigid).
	panel minWidth: (1).
	panel minHeight: (1).
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
	panel balloonText: (nil).
	panel balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.722)).
	panel color: ((Color r: 0.85 g: 0.85 b: 0.85)).
	panel borderWidth: (0).
	panel borderStyle2: (#simple).
	panel borderColor: (Color black).
	panel setProperty: #objectName toValue: 'panel'.
	issueTitle := UiLabel new.
	issueTitle changeTableLayout.
	issueTitle extent: (96@18).
	issueTitle position: (280@5).
	issueTitle hResizing: (#shrinkWrap).
	issueTitle vResizing: (#shrinkWrap).
	issueTitle minWidth: (1).
	issueTitle minHeight: (1).
	issueTitle cellInset: (0).
	issueTitle cellPositioning: (#center).
	issueTitle cellSpacing: (#none).
	issueTitle layoutInset: (0).
	issueTitle listCentering: (#topLeft).
	issueTitle listDirection: (#leftToRight).
	issueTitle listSpacing: (#none).
	issueTitle maxCellSize: (1073741823).
	issueTitle minCellSize: (0).
	issueTitle wrapCentering: (#topLeft).
	issueTitle wrapDirection: (#none).
	issueTitle frameFractions: (0@0 corner: 1@1).
	issueTitle frameOffsets: (0@0 corner: 0@0).
	issueTitle balloonText: (nil).
	issueTitle balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.749)).
	issueTitle text: ('Select an Issue.').
	issueTitle setProperty: #formByDesigner toValue: 'nil'.
	issueTitle form: (nil).
	issueTitle setProperty: #objectName toValue: 'issueTitle'.
	panel addChild: issueTitle.
	issueBody := UiTextEdit new.
	issueBody extent: (270@60).
	issueBody position: (280@60).
	issueBody hResizing: (#rigid).
	issueBody vResizing: (#rigid).
	issueBody minWidth: (1).
	issueBody minHeight: (1).
	issueBody cellInset: (0).
	issueBody cellPositioning: (#center).
	issueBody cellSpacing: (#none).
	issueBody layoutInset: (0).
	issueBody listCentering: (#topLeft).
	issueBody listDirection: (#topToBottom).
	issueBody listSpacing: (#none).
	issueBody maxCellSize: (1073741823).
	issueBody minCellSize: (0).
	issueBody wrapCentering: (#topLeft).
	issueBody wrapDirection: (#none).
	issueBody frameFractions: (0@0 corner: 1@1).
	issueBody frameOffsets: (0@0 corner: 0@0).
	issueBody balloonText: (nil).
	issueBody balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.749)).
	issueBody widgetResizable: (true).
	issueBody horizontalScrollBarPolicy: (#alwaysOff).
	issueBody verticalScrollBarPolicy: (#asNeeded).
	issueBody outerBorderWidth: (1).
	issueBody scrollBarThickness: (9).
	issueBody theText: ('').
	issueBody readOnly: (true).
	issueBody autoConvert: (false).
	issueBody autoAccept: (false).
	issueBody acceptOnFocusLost: (false).
	issueBody scrollingMode: (#none).
	issueBody scrollingLimit: (10).
	issueBody setProperty: #objectName toValue: 'issueBody'.
	panel addChild: issueBody.
	activePackageList := UiComboBox new.
	activePackageList extent: (272@20).
	activePackageList position: (0@0).
	activePackageList hResizing: (#rigid).
	activePackageList vResizing: (#rigid).
	activePackageList minWidth: (1).
	activePackageList minHeight: (1).
	activePackageList cellInset: (0).
	activePackageList cellPositioning: (#center).
	activePackageList cellSpacing: (#none).
	activePackageList layoutInset: (0).
	activePackageList listCentering: (#topLeft).
	activePackageList listDirection: (#topToBottom).
	activePackageList listSpacing: (#none).
	activePackageList maxCellSize: (1073741823).
	activePackageList minCellSize: (0).
	activePackageList wrapCentering: (#topLeft).
	activePackageList wrapDirection: (#none).
	activePackageList frameFractions: (0@0 corner: 1@1).
	activePackageList frameOffsets: (0@0 corner: 0@0).
	activePackageList balloonText: (nil).
	activePackageList balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.725)).
	activePackageList readOnly: (true).
	activePackageList setProperty: #objectName toValue: 'activePackageList'.
	panel addChild: activePackageList.
	issueList := UiListWidget new.
	issueList extent: (272@285).
	issueList position: (0@25).
	issueList hResizing: (#rigid).
	issueList vResizing: (#rigid).
	issueList minWidth: (1).
	issueList minHeight: (1).
	issueList cellInset: (0).
	issueList cellPositioning: (#center).
	issueList cellSpacing: (#none).
	issueList layoutInset: (0).
	issueList listCentering: (#topLeft).
	issueList listDirection: (#topToBottom).
	issueList listSpacing: (#none).
	issueList maxCellSize: (1073741823).
	issueList minCellSize: (0).
	issueList wrapCentering: (#topLeft).
	issueList wrapDirection: (#none).
	issueList frameFractions: (0@0 corner: 1@1).
	issueList frameOffsets: (0@0 corner: 0@0).
	issueList balloonText: (nil).
	issueList balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.722)).
	issueList widgetResizable: (true).
	issueList horizontalScrollBarPolicy: (#alwaysOff).
	issueList verticalScrollBarPolicy: (#asNeeded).
	issueList outerBorderWidth: (0).
	issueList scrollBarThickness: (9).
	issueList modelClass: (UiPropertyItemNode).
	issueList horizontalHeaderVisible: (false).
	issueList verticalHeaderVisible: (false).
	issueList selectionBehavior: (#selectRows).
	issueList selectionMode: (UiViewSingleSelection).
	issueList listOrientation: (#default).
	issueList hAlignment: (#left).
	issueList vAlignment: (#top).
	issueList setProperty: #objectName toValue: 'issueList'.
	panel addChild: issueList.
	issueAssignee := UiLabel new.
	issueAssignee changeTableLayout.
	issueAssignee extent: (9@18).
	issueAssignee position: (280@25).
	issueAssignee hResizing: (#shrinkWrap).
	issueAssignee vResizing: (#shrinkWrap).
	issueAssignee minWidth: (1).
	issueAssignee minHeight: (1).
	issueAssignee cellInset: (0).
	issueAssignee cellPositioning: (#center).
	issueAssignee cellSpacing: (#none).
	issueAssignee layoutInset: (0).
	issueAssignee listCentering: (#topLeft).
	issueAssignee listDirection: (#leftToRight).
	issueAssignee listSpacing: (#none).
	issueAssignee maxCellSize: (1073741823).
	issueAssignee minCellSize: (0).
	issueAssignee wrapCentering: (#topLeft).
	issueAssignee wrapDirection: (#none).
	issueAssignee frameFractions: (0@0 corner: 1@1).
	issueAssignee frameOffsets: (0@0 corner: 0@0).
	issueAssignee balloonText: (nil).
	issueAssignee balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.749)).
	issueAssignee text: (' ').
	issueAssignee setProperty: #formByDesigner toValue: 'nil'.
	issueAssignee form: (nil).
	issueAssignee setProperty: #objectName toValue: 'issueAssignee'.
	panel addChild: issueAssignee.
	panel setProperty: #uiClassName toValue: 'IssueBrowser'.