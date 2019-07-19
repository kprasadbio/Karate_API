Feature: Verify Post Request

Scenario: Create new user 

    Given url 'https://reqres.in/api/users'
    And header Accept = 'application/json' 
    And request {	"name": "Prasad","job": "QE"}
	When method post
	Then status 201
	Then match $ contains {name:"Prasad"} 
