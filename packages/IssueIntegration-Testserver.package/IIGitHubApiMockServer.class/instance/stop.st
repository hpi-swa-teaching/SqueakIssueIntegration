initialize-release
stop
	self webServer ifNotNil: [ self webServer destroy ]