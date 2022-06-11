Feature: Delete API Demo

  Background:
    * url 'https://reqres.in/api'

    #DELETE with Background
  Scenario: Test a Sample DELETE API
    Given path '/users/2'
    When method DELETE
    Then status 204
    And print response