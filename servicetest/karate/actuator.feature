Feature: Call the health check endpoint

Scenario: Successful call to health check endpoint
    Given url 'http://localhost:9080'
    And path 'chameleon/actuator/health'
    When method GET
    Then status 200
    * match response.status == 'UP'