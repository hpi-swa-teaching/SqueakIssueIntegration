running
testSettingsButton
	| settingsButton |
	settingsButton := self subject findByName: 'settingsButton'.
	self should: [ settingsButton click ] createMorphWithModel: IISettings