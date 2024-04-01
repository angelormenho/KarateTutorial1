Feature: plan de pruebas

  Scenario: caso de pruebas tipo GET
    Given url 'https://reqres.in/api/users/2'
    When method GET
    And match response.data.id == '#number'
    Then status 200

  Scenario: caso de pruebas tipo POST
    Given url 'https://reqres.in/api/users'
    When request
    """
    {
    "name": "fadrid",
    "job": "QA"
}
    """
    And method POST
    Then status 201

  Scenario: caso de pruebas tipo DELETE
    Given url 'https://reqres.in/api/users/2'
    When method DELETE
    Then status 204