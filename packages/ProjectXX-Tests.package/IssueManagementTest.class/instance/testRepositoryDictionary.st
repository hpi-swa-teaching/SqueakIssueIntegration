as yet unclassified
testRepositoryDictionary

IssueManagement initializeRepositoryDictionary.
IssueManagement addRepository: 'https://github.com/HPI-SWA-Teaching/SWT15-Project-03.git' to: 'ProjectXX-Core'.

self assert: (IssueManagement getRepositoryFor: 'ProjectXX-Core') equals: 'https://github.com/HPI-SWA-Teaching/SWT15-Project-03.git'.

IssueManagement deleteAssociationWith: 'ProjectXX-Core'.

self assert: (IssueManagement getRepositoryFor: 'ProjectXX-Core') equals: ''.

IssueManagement addRepository: 'https://github.com/HPI-SWA-Teaching/SWT15-Project-03.git' to: 'ProjectXX-Core'.