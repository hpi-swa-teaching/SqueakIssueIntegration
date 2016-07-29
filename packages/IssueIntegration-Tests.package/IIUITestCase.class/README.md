This specialized test case is used to test UI elements. It is a subclass of the MTFTestCase and as such provides all Morphic Testing Framework capabilities. It uses the ApiMockHelper to automatically mock the IssueManagement and start the GitHubApiMockServer.
It adds a new method to verify that a morph has been opened in the world or hand, called 
>>should: aBlock createMorphWithModel: aClass
All opened morphs are closed at when the test is torn down.