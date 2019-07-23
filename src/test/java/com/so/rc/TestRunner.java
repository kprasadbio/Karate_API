package com.so.rc;

import static org.junit.Assert.*;

import org.junit.Test;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import cucumber.api.CucumberOptions; 

//@RunWith(Karate.class) 

@KarateOptions //(plugin = {"json:target/cucumber.json","html:target/cucumber-html-report"})
@CucumberOptions(plugin = { "pretty", "html:target/surefire-reports" })
public class TestRunner 
{ 
	@Test
    public void testParallel() 
	{
        Results results = Runner.parallel(getClass(), 6, "target/surefire-reports");
        assertTrue(results.getErrorMessages(), results.getFailCount() == 0);
    }
	

}
