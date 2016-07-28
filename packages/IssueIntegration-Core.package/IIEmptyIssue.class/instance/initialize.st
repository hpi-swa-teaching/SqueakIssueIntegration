initialize-release
initialize
	super initialize.
	self
		number: -1;
		title: '';
		body: '';
		assignee: '';
		labels: OrderedCollection new