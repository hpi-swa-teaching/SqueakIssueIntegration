initialization
setUpPackages

	| packageNames |
	packageNames := PackageOrganizer default packageNames.
	packageNames sort.
	^ packageNames