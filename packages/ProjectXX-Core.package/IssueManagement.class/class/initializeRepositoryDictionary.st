as yet unclassified
initializeRepositoryDictionary

Transcript show:'ich bin doof'.
RepositoryDictionary := Dictionary new.
Transcript show:RepositoryDictionary.
"IssueManagement addRepository:'http://google.de' to:'ProjectXX-Core'."
RepositoryDictionary at:#ProjectXX put:'http://google.de'.
Transcript show: [RepositoryDictionary at:#ProjectXX].

Transcript show: [IssueManagement getRepositories at:'ProjectXX-Core'].