ui - private
initializePanel
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	
	| unnamedMorph1 |
	
	panel := UiContainer new.
	panel extent: (500@300).
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
	issueContainer := UiContainer new.
	issueContainer extent: (230@218).
	issueContainer position: (247@37).
	issueContainer hResizing: (#rigid).
	issueContainer vResizing: (#rigid).
	issueContainer minWidth: (1).
	issueContainer minHeight: (1).
	issueContainer cellInset: (4).
	issueContainer cellPositioning: (#center).
	issueContainer cellSpacing: (#none).
	issueContainer layoutInset: (4).
	issueContainer listCentering: (#topLeft).
	issueContainer listDirection: (#topToBottom).
	issueContainer listSpacing: (#none).
	issueContainer maxCellSize: (1073741823).
	issueContainer minCellSize: (0).
	issueContainer wrapCentering: (#topLeft).
	issueContainer wrapDirection: (#none).
	issueContainer frameFractions: (0@0 corner: 1@1).
	issueContainer frameOffsets: (0@0 corner: 0@0).
	issueContainer balloonText: (nil).
	issueContainer balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.729)).
	issueContainer color: (Color transparent).
	issueContainer borderWidth: (0).
	issueContainer borderStyle2: (#simple).
	issueContainer borderColor: (Color black).
	issueContainer setProperty: #objectName toValue: 'issueContainer'.
	issueContainer setProperty: #objectDescription toValue: 'should be a morph with corresponding color'.
	issueTitle := UiLabel new.
	issueTitle changeTableLayout.
	issueTitle extent: (25@18).
	issueTitle position: (249@39).
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
	issueTitle balloonText: ('').
	issueTitle balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.741)).
	issueTitle text: ('title').
	issueTitle setProperty: #formByDesigner toValue: 'nil'.
	issueTitle form: (nil).
	issueTitle setProperty: #objectName toValue: 'issueTitle'.
	issueContainer addChild: issueTitle.
	issueAssignee := UiLabel new.
	issueAssignee changeTableLayout.
	issueAssignee extent: (56@18).
	issueAssignee position: (415@57).
	issueAssignee hResizing: (#shrinkWrap).
	issueAssignee vResizing: (#shrinkWrap).
	issueAssignee minWidth: (1).
	issueAssignee minHeight: (1).
	issueAssignee cellInset: (0).
	issueAssignee cellPositioning: (#center).
	issueAssignee cellSpacing: (#none).
	issueAssignee layoutInset: (0).
	issueAssignee listCentering: (#topLeft).
	issueAssignee listDirection: (#rightToLeft).
	issueAssignee listSpacing: (#none).
	issueAssignee maxCellSize: (1073741823).
	issueAssignee minCellSize: (0).
	issueAssignee wrapCentering: (#topLeft).
	issueAssignee wrapDirection: (#none).
	issueAssignee frameFractions: (0@0 corner: 1@1).
	issueAssignee frameOffsets: (0@0 corner: 0@0).
	issueAssignee balloonText: ('').
	issueAssignee balloonColor: (Color transparent).
	issueAssignee text: ('assignee').
	issueAssignee setProperty: #formByDesigner toValue: 'nil'.
	issueAssignee form: (nil).
	issueAssignee setProperty: #objectName toValue: 'issueAssignee'.
	issueContainer addChild: issueAssignee.
	issueLabels := UiLabel new.
	issueLabels changeTableLayout.
	issueLabels extent: (37@18).
	issueLabels position: (249@56).
	issueLabels hResizing: (#shrinkWrap).
	issueLabels vResizing: (#shrinkWrap).
	issueLabels minWidth: (1).
	issueLabels minHeight: (1).
	issueLabels cellInset: (0).
	issueLabels cellPositioning: (#center).
	issueLabels cellSpacing: (#none).
	issueLabels layoutInset: (0).
	issueLabels listCentering: (#topLeft).
	issueLabels listDirection: (#leftToRight).
	issueLabels listSpacing: (#none).
	issueLabels maxCellSize: (1073741823).
	issueLabels minCellSize: (0).
	issueLabels wrapCentering: (#topLeft).
	issueLabels wrapDirection: (#none).
	issueLabels frameFractions: (0@0 corner: 1@1).
	issueLabels frameOffsets: (0@0 corner: 0@0).
	issueLabels balloonText: ('').
	issueLabels balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.741)).
	issueLabels text: ('labels').
	issueLabels setProperty: #formByDesigner toValue: 'nil'.
	issueLabels form: (nil).
	issueLabels setProperty: #objectName toValue: 'issueLabels'.
	issueLabels setProperty: #objectDescription toValue: 'should be a morph with corresponding color'.
	issueContainer addChild: issueLabels.
	issueBody := UiTextEdit new.
	issueBody extent: (160@100).
	issueBody position: (272@85).
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
	issueBody balloonText: ('').
	issueBody balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.729)).
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
	issueContainer addChild: issueBody.
	unnamedMorph1 := UiTextEdit new.
	unnamedMorph1 extent: (182@31).
	unnamedMorph1 position: (271@199).
	unnamedMorph1 hResizing: (#rigid).
	unnamedMorph1 vResizing: (#rigid).
	unnamedMorph1 minWidth: (1).
	unnamedMorph1 minHeight: (1).
	unnamedMorph1 cellInset: (0).
	unnamedMorph1 cellPositioning: (#center).
	unnamedMorph1 cellSpacing: (#none).
	unnamedMorph1 layoutInset: (0).
	unnamedMorph1 listCentering: (#topLeft).
	unnamedMorph1 listDirection: (#topToBottom).
	unnamedMorph1 listSpacing: (#none).
	unnamedMorph1 maxCellSize: (1073741823).
	unnamedMorph1 minCellSize: (0).
	unnamedMorph1 wrapCentering: (#topLeft).
	unnamedMorph1 wrapDirection: (#none).
	unnamedMorph1 frameFractions: (0@0 corner: 1@1).
	unnamedMorph1 frameOffsets: (0@0 corner: 0@0).
	unnamedMorph1 balloonText: (nil).
	unnamedMorph1 balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.725)).
	unnamedMorph1 widgetResizable: (true).
	unnamedMorph1 horizontalScrollBarPolicy: (#alwaysOff).
	unnamedMorph1 verticalScrollBarPolicy: (#asNeeded).
	unnamedMorph1 outerBorderWidth: (1).
	unnamedMorph1 scrollBarThickness: (9).
	unnamedMorph1 theText: ('').
	unnamedMorph1 readOnly: (false).
	unnamedMorph1 autoConvert: (false).
	unnamedMorph1 autoAccept: (false).
	unnamedMorph1 acceptOnFocusLost: (false).
	unnamedMorph1 scrollingMode: (#none).
	unnamedMorph1 scrollingLimit: (10).
	issueContainer addChild: unnamedMorph1.
	panel addChild: issueContainer.
	issueList := UiListWidget new.
	issueList extent: (195@234).
	issueList position: (37@31).
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