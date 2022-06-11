package com.karate.demo.features;

import com.intuit.karate.junit4.Karate;
import org.junit.BeforeClass;
import org.junit.runner.RunWith;

@RunWith(Karate.class)
public class TestRunner {

    @BeforeClass
    public static void setUp() {
        System.setProperty("karate.env", "sandbox");
    }
}
