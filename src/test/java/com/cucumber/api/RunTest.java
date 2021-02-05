package com.cucumber.api;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;


@RunWith(Cucumber.class)
@CucumberOptions(plugin = {"pretty", "html:target/cucumber.html", "json:target/cucumber.json"},
        tags = "@test",
        features = "classpath:features/",
        useFileNameCompatibleName = false,
        glue = {"classpath:com.cucumber.api"})
public class RunTest {

}

