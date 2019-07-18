Feature: Test User API

	# Background:
	  # * url 'https://reqres.in'
  
 Scenario: fetch the users
 #*def baseURL='https://reqres.in'
  
    #Given path  baseURL+'/api/users/2'
    Given url 'https://reqres.in/api/users'
    When method GET
    Then status 200 
    Then print response[0].id==2
    
    
 Scenario: fetch the users 
  
    #Given path  baseURL+'/api/users/2'
    Given url 'https://reqres.in/api/users'
    When method GET
    Then status 200 
    Then print response
    
    
 Scenario: find broken link
  
    Given url  'https://reqres.in/api/unknown/23'
    #Given url 'https://reqres.in/api/users'
    When method GET
    Then status 404
    Then print response