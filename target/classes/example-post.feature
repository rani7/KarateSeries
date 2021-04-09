Feature: post call from gorest api
Background:
   * url 'https://gorest.co.in/'
   * header Content-Type = 'application/json'
   * header Authorization = 'Bearer _FWTKt73f0EeVrfWj7d3sKoLMnw_9dqVcs0k'
Scenario: create a user
Given path '/public-api/users'
And request "name":"Tom Baker", "gender":"Male", "email":"tomb@abc.com", "status":"Active"
When method POST
Then status 200