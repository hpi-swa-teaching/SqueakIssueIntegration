ui - private
initializePanel
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	
	|  |
	
	panel := UiContainer new.
	panel extent: (280@320).
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
	activePackageList balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.729)).
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
	panel setProperty: #uiClassName toValue: 'IssueBrowser'.