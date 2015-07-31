initialization
setUpPackages

|packageNames|

	packageNames := PackageOrganizer default packageNames.
	packageNames sort;
	 do: [:package | self ui packagesList addText: package]