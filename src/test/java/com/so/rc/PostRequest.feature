Feature: Verify Post Request

Scenario: Create user 

    Given url 'https://reqres.in/api/users' 
    And request {	"name": "Prasad","job": "QE"}
	When method post
	Then status 201
	Then match $ contains {name:"Prasad"} 
