function() 
{
	var env = karate.env; // get java system property 'karate.env' 
	  karate.log('karate.env system property was:', env);
	  
	  karate.log('karate tests running on Operations system:', karate.os);
  
	  var config=
	  {
		baseUrl: 'https://reqres.in'
	  }
	  
	  return config;
  
}