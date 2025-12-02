Feature: Call the greetings endpoint

Scenario: Successful call to greetings endpoint
    Given url 'http://localhost:8080'
    And path 'default/chameleon/v1/greetings'
    When method GET
    Then status 200
    * match response.serviceName == 'chameleon'
    * match response.message == 'This is the chameleon service!'

Scenario: Not found call to chameleon service
    Given url 'http://localhost:8080'
    And path 'default/chameleon/v1/like'
    When method GET
    Then status 404