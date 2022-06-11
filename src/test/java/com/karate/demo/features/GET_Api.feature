Feature: Get API Demo

  Background:
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'

    #Simple GET Request
#  Scenario: Test a Sample GET API 1
#    Given url 'https://reqres.in/api/users?page=2'
#    When method GET
#    Then status 200
#    And print response
#    And print responseStatus
#    And print responseTime
#    And print responseHeaders
#    And print responseCookies

    #GET with Background
  Scenario: Test a Sample GET API 2
    Given path '/users?page=2'
    When method GET
    Then status 200
    And print response

    #GET with Param
  Scenario: Test a Sample GET API 3
    Given path '/users'
    And param page = 2
    When method GET
    Then status 200
    And print response

    #GET with Assertions
  Scenario: Test a Sample GET API 4
    Given path '/users'
    And param page = 2
    When method GET
    Then status 200
    And assert response.data.length == 6
    And match response.data[0].first_name != null
    And match response.data[4].last_name == 'Edwards'
    And match response.data[3].id == 10
