as yet unclassified
testRepositoryDictionary

"We do not know if there is an old key, so we delete it if it exists"
IssueManagement deleteRepositoryFor: 'ProjectXX-Core'. 

IssueManagement addRepository: 'https://github.com/HPI-SWA-Teaching/SWT15-Project-03.git' to: 'ProjectXX-Core'.
self assert: (IssueManagement getRepositoryFor: 'ProjectXX-Core') equals: 'https://github.com/HPI-SWA-Teaching/SWT15-Project-03.git'.

IssueManagement deleteRepositoryFor: 'ProjectXX-Core'.
self assert: (IssueManagement getRepositoryFor: 'ProjectXX-Core') equals: ''.

"At the end the the repository should be set"
IssueManagement addRepository: 'https://github.com/HPI-SWA-Teaching/SWT15-Project-03.git' to: 'ProjectXX-Core'.