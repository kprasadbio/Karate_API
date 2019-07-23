Feature: test

	Background: 
	  * url baseUrl 


Scenario: Duplicate scdnario
	Given path   '/api/users/2'
    #Given url 'https://reqres.in/api/users' 
    When method GET
    Then status 200 
    Then print 'print config details:' baseUrl response[0].id==2  
    * print 'URL:' baseUrl