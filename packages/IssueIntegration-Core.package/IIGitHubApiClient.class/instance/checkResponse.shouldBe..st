requesting
checkResponse: aResponse shouldBe: aNumber
	aResponse code == aNumber ifFalse: [ self errorForResponse: aResponse ]