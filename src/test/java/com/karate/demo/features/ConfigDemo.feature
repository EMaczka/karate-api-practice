Feature: Config Demo

  Background:
    * url baseURL

  Scenario: Karate config file test 1
    Given print name

     #GET with Config file
  Scenario: Test a Config file
    Given path '/users?page=2'
    When method GET
    Then status 200
    And print response