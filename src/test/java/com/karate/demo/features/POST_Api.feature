Feature: Post API Demo

  Background:
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'
    * def expectedOutput = read('response1.json')

 # Simple POST Request
#Scenario: Test a Sample POST API 1
#  Given url 'https://reqres.in/api/users'
#  And request {"name": "morpheus", "job": "leader"}
#  When method POST
#  Then status 201
#  And print response

    #POST with Background
  Scenario: Test a Sample POST API 2
    Given path '/users'
    And request {"name": "morpheus", "job": "leader"}
    When method POST
    Then status 201

    #POST with Assertions
  Scenario: Test a Sample POST API 3
    Given path '/users'
    And request {"name": "morpheus", "job": "leader"}
    When method POST
    Then status 201
    And match response == {"name": "morpheus", "job": "leader", "id": "#string", "createdAt": "#ignore"}
    And print response

    #POST with read response from file
  Scenario: Test a Sample POST API 4
    Given path '/users'
    And request {"name": "morpheus", "job": "leader"}
    When method POST
    Then status 201
    And match response == expectedOutput
    And match $ == expectedOutput
    And print response

    #POST with read request body from file
  Scenario: Test a Sample POST API 5
    Given path '/users'
    And def projectPath = karate.properties['user.dir']
    And def filepath = '../files/request2.json'
    And def reqBody = read(filepath)
    And request reqBody
    When method POST
    Then status 201
    And match $ == expectedOutput
    And print response

    #POST with read request data from file and change values
  Scenario: Test a Sample POST API 6
    Given path '/users'
    And def reqBody = read('request1.json')
    And set reqBody.job = 'engineer'
    And request reqBody
    When method POST
    Then status 201
    And match response != expectedOutput
    And match $ != expectedOutput
    And print response