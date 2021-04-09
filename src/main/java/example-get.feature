Feature: get call from gorest api
Background:
   * url 'https://gorest.co.in/'
   * header Authorization = 'Bearer _FWTKt73f0EeVrfWj7d3sKoLMnw_9dqVcs0k'
Scenario: list all users having name John
Given path '/public-api/users'
And param first_name = 'Tom'
And param status = 'active'
When method get
Then status 200
And def userResponse = response
Then match userResponse.result[*].first_name contains ["Tom"]  