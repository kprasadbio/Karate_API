Feature: Verify Post Request

 Background:
 *url baseUrl

Scenario: Create new user 

    #Given url 'https://reqres.in/api/users'
    Given url baseUrl
    Then path '/api/users'
    And header Accept = 'application/json' 
    And request {	"name": "Prasad","job": "QE"}
	When method post
	Then status 201
	Then match $ contains {name:"Prasad"}	 
	* print 'print rsp:', response
	* print 'print rsp1:', baseUrl 
