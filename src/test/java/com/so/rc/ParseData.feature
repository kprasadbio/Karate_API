Feature: Test User API

	#Background: url baseUrl
	#*url 'https://reqres.in'
  
  
 Scenario: delete use and check 204
	 #Given path '/api/users/5/'
	 Given url 'https://reqres.in/api/users/5/'
	 Then print baseUrl
	 When method DELETE
	 Then status 204
	 And print 'print value'+baseUrl
 
     