Feature: Put API Demo

  Background:
    * url 'https://reqres.in/api'

    #PUT with Background
  Scenario: Test a Sample PUT API
    Given path '/users/2'
    And request {"name": "morpheus", "job": "teacher"}
    When method PUT
    Then status 200
    And print response