accessing
<= anotherIssue
	"This may seem counter-intuitive at first glance: An issue with higher number is 
	'lower or equal' to an issue with a bigger number. However, this allows us to sort 
	issue collections using >>sorted by 'newest issue first', which is the usual display
	style of issues."
	^ anotherIssue number <= self number